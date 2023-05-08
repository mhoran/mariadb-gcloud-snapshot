FROM google/cloud-sdk:429.0.0-alpine@sha256:d49a9d6d4118431260f9c8f9a42efc8a5b4939f4be9ce6d6977245daf00ae1e0
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
