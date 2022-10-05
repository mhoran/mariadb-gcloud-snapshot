FROM google/cloud-sdk:405.0.0-alpine@sha256:064065a8dec3bf380b7c62ad9d1a8ab5cfba6df226afcb7fa6283e857be17d3c
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
