FROM google/cloud-sdk:408.0.1-alpine@sha256:61ed9eaee69862f312e79ebeb7c0d61aa3b415c3e3cb7ab5d8b756f5c5d86902
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
