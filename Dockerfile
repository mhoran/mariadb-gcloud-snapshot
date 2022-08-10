FROM google/cloud-sdk:397.0.0-alpine@sha256:5ff220552a0ea9ad833bb5f3a46330179a5debabadae3b02478feb7f370808dd
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
