FROM google/cloud-sdk:368.0.0-alpine@sha256:ffe2d22928d9670dd11911f2856b5d56e1a779d6a9ea9407955f0f26a9a874e4
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
