FROM google/cloud-sdk:435.0.0-alpine@sha256:51e36606288d77538dd5757f7e90a417c8c3335800c1010ba7d6cf5b1da8b9e3
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
