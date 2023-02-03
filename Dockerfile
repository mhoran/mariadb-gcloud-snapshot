FROM google/cloud-sdk:416.0.0-alpine@sha256:bf106d79c8d20925981b76f414c968ed4a19c3a19b73369d28ae1aeea6482c81
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
