FROM google/cloud-sdk:379.0.0-alpine@sha256:06a5341d8561d0ffbc14f83e8116a5a5fd2d4488f67963e6aaeae88924978077
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
