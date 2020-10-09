FROM google/cloud-sdk:alpine@sha256:3b0aa34d80735cb2bb08846bee258cfe72f47b1d57e66ffcb804fff5731395ef
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
