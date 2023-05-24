FROM google/cloud-sdk:432.0.0-alpine@sha256:42473d860525e562c2c9611f3e59435e9f1f076e9bc431e32022fc10e1848e87
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
