FROM google/cloud-sdk:381.0.0-alpine@sha256:f277ddcc42581828d4d60410e44ffce0058edd2a037b2ef77fd9f9e41f47bff6
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
