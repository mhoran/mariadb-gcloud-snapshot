FROM google/cloud-sdk:402.0.0-alpine@sha256:f66858b5f4fe97767f5ad804e86f5a320617583781f27f1a649d5abbe4923dff
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
