FROM google/cloud-sdk:439.0.0-alpine@sha256:913bfcebec23d7993a0a51af98ba2a2129fddfc5657bcb42ee2a1baed631f207
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
