FROM google/cloud-sdk:419.0.0-alpine@sha256:e8c6e1e5831b850b33ae5454763300df0617bc8c758b7fcbb979e9e1d6ddb1f8
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
