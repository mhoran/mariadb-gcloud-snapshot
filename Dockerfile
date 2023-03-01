FROM google/cloud-sdk:420.0.0-alpine@sha256:1c36c09e31a160ae76ee8391e8c346e1cad9e5c3d3198a34b60b7bffc3be04a9
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
