FROM google/cloud-sdk:391.0.0-alpine@sha256:d6452e8f998ebbbd76f8677e320c031f538e1b516f7b8172504a1fbcd54aea44
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
