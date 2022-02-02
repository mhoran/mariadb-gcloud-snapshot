FROM google/cloud-sdk:371.0.0-alpine@sha256:606d5e4ccb0136b88bbcf3adca1f80b955fccc162c8053864557fedc18af3a5b
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
