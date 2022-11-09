FROM google/cloud-sdk:409.0.0-alpine@sha256:b20cb23b303d3b3ebde15d3b8759beac6d8e9da8b49a1e189b7843130df264e4
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
