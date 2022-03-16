FROM google/cloud-sdk:377.0.0-alpine@sha256:8589220990bd2f187c244c92e6285dee368d3e0d16433be1fba7ce564a886957
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
