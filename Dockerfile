FROM google/cloud-sdk:alpine@sha256:94e14ccaa1c628d1150dba028674004a5c5f2a26cf2763b654a3c41398065ea1
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
