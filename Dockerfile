FROM google/cloud-sdk:401.0.0-alpine@sha256:7924e76302229b6b7f4dcda5ab9128e9b5f8b0280f3b3a5abe57521139067da2
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
