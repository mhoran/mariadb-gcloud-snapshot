FROM google/cloud-sdk:385.0.0-alpine@sha256:60682d61bf075f4b83a52b0fac71826ec5d594577eb95a5fcb54843362d75947
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
