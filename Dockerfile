FROM google/cloud-sdk:402.0.0-alpine@sha256:20ec5831f167b1e1283348a98651b1068fa46cabad4c349758be75038e55df8a
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
