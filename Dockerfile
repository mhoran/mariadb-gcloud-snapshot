FROM google/cloud-sdk:411.0.0-alpine@sha256:2221cfdb0c94a90ef015684e1f6b2de36246e118b0db355eeb263a18548de6f3
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
