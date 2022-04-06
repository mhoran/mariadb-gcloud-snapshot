FROM google/cloud-sdk:380.0.0-alpine@sha256:36671ae61f7cdf66ad17697acdff638cca8bf8212d3e620c30810791248189da
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
