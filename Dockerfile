FROM google/cloud-sdk:389.0.0-alpine@sha256:17820a282fceb48d193d02d08a698be9bb88316ecf587d11e9f364c889395547
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
