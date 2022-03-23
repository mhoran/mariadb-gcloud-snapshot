FROM google/cloud-sdk:378.0.0-alpine@sha256:eb796485dda671767ba1f8516f47099ea585c798c634f80da780a1c378b6af19
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
