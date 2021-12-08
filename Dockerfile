FROM google/cloud-sdk:366.0.0-alpine@sha256:aeaa6c3c01e8b157f63e694f4b2e5df136ba00f997dbcbaab67633eeb4a6c642
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
