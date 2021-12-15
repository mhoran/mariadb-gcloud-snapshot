FROM google/cloud-sdk:367.0.0-alpine@sha256:a93e1b1360565749bdf2c84bdb6d6e2c8efd146fd679e367d1e9934c33122c03
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
