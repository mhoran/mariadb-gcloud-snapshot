FROM google/cloud-sdk:431.0.0-alpine@sha256:4b895025fe78fd4713f823eef534b6768ed9d55dcabf67f40704b1a7c9d256dd
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
