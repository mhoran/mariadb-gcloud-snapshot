FROM google/cloud-sdk:441.0.0-alpine@sha256:e9619c6a0aec2a67a43cec0b98a62dbd28a798d4e39c30390bf49bb14aed721e
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
