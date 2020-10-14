FROM google/cloud-sdk:alpine@sha256:a73fa572c2a31214cae44d60d63350db3607388de6570f78fa34b6d154a3c617
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
