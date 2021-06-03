FROM google/cloud-sdk:alpine@sha256:538c7dc4ab6ba52387c8188c2cde731007b8aacf6bee245c5f3fdc7466d5c6e2
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
