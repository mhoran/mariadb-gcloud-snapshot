FROM google/cloud-sdk:383.0.1-alpine@sha256:c7f98a69e3f9b8ed74b9217240f1757fb7b94d3a9fbb7c7905f3b81dfc93e882
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
