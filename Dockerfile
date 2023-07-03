FROM google/cloud-sdk:437.0.1-alpine@sha256:538c8aab0ab99fdfe6c67f2653a4780df44d6ba0b8210154bfb4fa54909430f9
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
