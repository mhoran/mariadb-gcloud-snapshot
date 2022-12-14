FROM google/cloud-sdk:412.0.0-alpine@sha256:d1ffc996b5ae897fa3fa06a3335a1f301c14c29f4a535970c969319edc33a2bd
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
