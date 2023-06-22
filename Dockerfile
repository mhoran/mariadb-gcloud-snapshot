FROM google/cloud-sdk:436.0.0-alpine@sha256:14271286e4f917235e8a00e77193cc72300ae8780ebc7541cb7f9271a09e9f24
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
