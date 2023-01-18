FROM google/cloud-sdk:413.0.0-alpine@sha256:b180f76ac481957f0cfe76a4002814fc4446a6036f7160571181d14fe6a3763a
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
