FROM google/cloud-sdk:398.0.0-alpine@sha256:3d8421f12c1973b3034a8c662420aacae318a4ad35a8d2cda3fd6a14eb23d0b9
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
