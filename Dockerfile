FROM google/cloud-sdk:414.0.0-alpine@sha256:b0e1d5862f19ed92175c293c8bc0d7a20dce89a441d551564d69092733bab671
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
