FROM google/cloud-sdk:428.0.0-alpine@sha256:b2a19833b11676876402f63f39c03f4e06b598e30dec5bd6173527c23b4d53c7
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
