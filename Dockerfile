FROM google/cloud-sdk:384.0.0-alpine@sha256:160bc62018699e9b32a7eed853942afb6b0cb416807761d8ed53a64ce1ad781e
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
