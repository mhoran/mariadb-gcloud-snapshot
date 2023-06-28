FROM google/cloud-sdk:437.0.0-alpine@sha256:0299645dd0bfdb327ed5bad8928020d0803a74a193bcc019e6d7d757ad0c5503
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
