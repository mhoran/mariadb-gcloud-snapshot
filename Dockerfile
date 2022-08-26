FROM google/cloud-sdk:399.0.0-alpine@sha256:bedc795d0f14a6cc9534092b5309dde774f574a3577b3dfbdf22ac6f044165cc
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
