FROM google/cloud-sdk:428.0.0-alpine@sha256:5956439213075ee5f91b80d7643736dded707db46d61e4c98e1eddb640e6b90a
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
