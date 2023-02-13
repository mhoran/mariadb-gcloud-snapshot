FROM google/cloud-sdk:417.0.1-alpine@sha256:cda720763872282990d64ab3b4e5dcc185b24de4f68e6b4e78694be4ac8a8096
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
