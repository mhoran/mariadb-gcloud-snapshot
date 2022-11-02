FROM google/cloud-sdk:408.0.0-alpine@sha256:f64c0f8f9a58c0821391dbb987cf567278c907c828dddc056d7f369c57177c82
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
