FROM google/cloud-sdk:433.0.0-alpine@sha256:d199d717ab32a06105a389be204b3e6eef1ce1179c5e9ceb97eb1d18088faef0
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
