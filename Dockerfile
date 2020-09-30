FROM google/cloud-sdk:alpine@sha256:d2e18afb7c00f7a0c95b0a8e9f7b1839e4d10b0116d322c0ed889c26d435551d
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
