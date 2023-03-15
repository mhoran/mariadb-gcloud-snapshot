FROM google/cloud-sdk:422.0.0-alpine@sha256:041126af4fc73e6175168aaa8e2ef953c2a9cfdb8d2bd681e4882373718f1407
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
