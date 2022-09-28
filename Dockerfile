FROM google/cloud-sdk:404.0.0-alpine@sha256:9f002ad4b9c14026b84e4ac5684c0aff4f167acb7982c32be2db45798f70ba8c
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
