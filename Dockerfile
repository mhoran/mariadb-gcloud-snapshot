FROM google/cloud-sdk:434.0.0-alpine@sha256:75984678709bf43824084265602c59d86cb884dc4d4b5fc46720e0f82c7f0b7c
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
