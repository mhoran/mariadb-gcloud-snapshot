FROM google/cloud-sdk:392.0.0-alpine@sha256:5ffa5000e8c46d9aecccbb853e939d88cd388d29716305ae81ce8fad047ad7c9
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
