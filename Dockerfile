FROM google/cloud-sdk:alpine@sha256:e46676d943ac1c614f7e4fc2626f1517f068847e32af4189bdd9487e5b3b019a
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
