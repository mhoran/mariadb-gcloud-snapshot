FROM google/cloud-sdk:alpine@sha256:4ecdcf085c7af5f645327006d0a73d60398f0bcc50a989ac2c9775b365c8e9fe
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
