FROM google/cloud-sdk:424.0.0-alpine@sha256:0e7d5a377e008d89ecb54f6e13470497e839e54d0940761030604026f705cb38
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
