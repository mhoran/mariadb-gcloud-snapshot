FROM google/cloud-sdk:372.0.0-alpine@sha256:efbff5e0c71dfbbb805e5e3f37724890d03688bf038e11a24200202809b45c26
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
