FROM google/cloud-sdk:433.0.1-alpine@sha256:4e85fd9b62e7edf7262063b88c4dcdaa6356614baeadc51d2ace1e4f73c2274a
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
