FROM google/cloud-sdk:388.0.0-alpine@sha256:acf7dc5bcb2b8fe400e40d6bf9baa72dc2f79c751f8b28a78d8eb9969524f62b
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
