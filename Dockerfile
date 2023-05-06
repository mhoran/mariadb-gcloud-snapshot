FROM google/cloud-sdk:429.0.0-alpine@sha256:af339170e44abd37fabb7829c523ec018780177a3710d87cfd7d3fb74d673748
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
