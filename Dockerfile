FROM google/cloud-sdk:374.0.0-alpine@sha256:35cf543986e6671d25e0db2e337556d977a3a720af6c7a4ef97b7e9f92624635
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
