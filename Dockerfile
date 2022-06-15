FROM google/cloud-sdk:390.0.0-alpine@sha256:50e9805446e2990a947fbaedbee01785b3648e23089c5248414990e25c759d52
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
