FROM google/cloud-sdk:400.0.0-alpine@sha256:445f93e12b6425da026470c170eb86b4c46fe118ba9c49972d936bc7bde4c1f5
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
