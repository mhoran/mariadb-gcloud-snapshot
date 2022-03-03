FROM google/cloud-sdk:375.0.0-alpine@sha256:a14949b24b10279df9f097a462613311bd88f4f4628c9f8aaf72d2795f3d0706
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
