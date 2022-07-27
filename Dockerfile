FROM google/cloud-sdk:395.0.0-alpine@sha256:282aa5efa274bd99f2ede0b07807994525282c9d6facc764fc22521e521fae83
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
