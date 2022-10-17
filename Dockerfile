FROM google/cloud-sdk:405.0.1-alpine@sha256:77207b98e72f8cc2ee6fe3f5ee2c06c1079c8822ef22ca20756dd8f9958b6c29
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
