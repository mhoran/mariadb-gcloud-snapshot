FROM google/cloud-sdk:370.0.0-alpine@sha256:025954535673ede7f8fef8ad8c86478ef5c2ba8bf7e9257892aa4af02fa91fdd
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
