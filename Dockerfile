FROM google/cloud-sdk:alpine@sha256:42fe876c36dc916cb5a90038c14bf7d1fdee617534bfce227e3d128d5f25b749
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
