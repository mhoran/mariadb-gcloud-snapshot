FROM google/cloud-sdk:387.0.0-alpine@sha256:a63477855f294057dbc4f45d6aa8b6a352632501beaa606976d5911610249133
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
