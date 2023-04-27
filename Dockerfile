FROM google/cloud-sdk:428.0.0-alpine@sha256:fe0bc8650d7360db41225622a184af7d8688e8cd1d5f981d04a6bf12637dabff
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
