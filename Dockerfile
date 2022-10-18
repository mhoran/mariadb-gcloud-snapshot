FROM google/cloud-sdk:406.0.0-alpine@sha256:f50a39bf88bccb033af6ee606340456754f7f78b00b89f087cf8e66a258b8379
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
