FROM google/cloud-sdk:410.0.0-alpine@sha256:0cce8b6a4677749c39e3aeb7bcb783c369ee2729a3104e2d51b557356691579c
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
