FROM google/cloud-sdk:416.0.0-alpine@sha256:262558b7c4f17ea6868a4ccda8753ca27bd7d3ea18bd73c3c30e63790be34be5
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
