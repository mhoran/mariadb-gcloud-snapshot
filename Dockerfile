FROM google/cloud-sdk:396.0.0-alpine@sha256:20ae8323cbae1d7711ae80f567861ec1f291b9cf251ac96c66c0c3885f32d2cf
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
