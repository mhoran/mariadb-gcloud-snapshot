FROM google/cloud-sdk:alpine@sha256:2add2f5b2e9b83f4d5731b3910c29d22c9e7c2fab063b7dbfb9c5d98c62c1fc5
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
