FROM google/cloud-sdk:386.0.0-alpine@sha256:ffa538f5797e379fe0cfd69d4d493eee359555cb366d3a8c5f7ed37ee922ee51
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
