mariadb-gcloud-snapshot
=======================

A script for backing up MariaDB using `BACKUP STAGE` and Google Cloud snapshots.

Environment Variables
---------------------

`MYSQL_ROOT_PASSWORD_FILE`: path to file containing the MariaDB root password.

Example Kubernetes Deployment
-----------------------------

```
apiVersion: batch/v1beta1
kind: CronJob
metadata:
  annotations:
  name: mariadb-gcloud-snapshot
  namespace: default
spec:
  concurrencyPolicy: Forbid
  failedJobsHistoryLimit: 1
  jobTemplate:
    spec:
      backoffLimit: 0
      template:
        spec:
          containers:
          - command:
            - /root/backup.sh
            env:
            - name: DISK_NAME
              value: <disk-name-to-snapshot>
            - name: MYSQL_HOST
              value: <name-of-mysql-service>
            - name: MYSQL_ROOT_PASSWORD_FILE
              value: /var/run/secrets/mysql-root-password
            image: matthoran/mariadb-gcloud-snapshot
            imagePullPolicy: Always
            name: mariadb-gcloud-snapshot
            resources:
              requests:
                cpu: "0"
            terminationMessagePath: /dev/termination-log
            terminationMessagePolicy: File
            volumeMounts:
            - mountPath: /var/run/secrets/mysql-root-password
              name: mysql-root-password
              readOnly: true
              subPath: mysql-root-password
          dnsPolicy: ClusterFirst
          restartPolicy: Never
          schedulerName: default-scheduler
          securityContext: {}
          serviceAccountName: mariadb-gcloud-snapshot
          terminationGracePeriodSeconds: 30
          volumes:
          - name: mysql-root-password
            secret:
              defaultMode: 420
              secretName: mysql-root-password
      ttlSecondsAfterFinished: 0
  schedule: 30 6 * * *
  successfulJobsHistoryLimit: 3
  suspend: false
---
apiVersion: v1
data:
  mysql-root-password: <base64-encoded-password>
kind: Secret
metadata:
  name: mysql-root-password
  namespace: default
type: Opaque
---
apiVersion: v1
kind: ServiceAccount
metadata:
  annotations:
    iam.gke.io/gcp-service-account: mariadb-gcloud-snapshot@<project-id>.iam.gserviceaccount.com
  name: mariadb-gcloud-snapshot
  namespace: default
```

The backup script utilizes GKE [workload identity](https://cloud.google.com/kubernetes-engine/docs/how-to/workload-identity) to access Google Cloud services. Workload identity must be set up on the cluster, and the above Kubernetes `ServiceAccount` must be granted access to the corresponding Google service account. The Google service account must be granted the `roles/compute.storageAdmin` role. 

Test with `kubectl create job --from=cronjob/mariadb-gcloud-snapshot mariadb-gcloud-snapshot-test`.
