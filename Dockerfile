FROM google/cloud-sdk:433.0.1-alpine@sha256:cba61285346abb92a06fa80069604590d605d7dfeea69e5b9af223d20f95a69d
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
