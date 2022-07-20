FROM google/cloud-sdk:394.0.0-alpine@sha256:c490a5ee091dd7bf64142253d9a29b871e659f8f5cfee4f7c5fc2d4cac7ffa58
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
