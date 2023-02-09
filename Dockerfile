FROM google/cloud-sdk:417.0.0-alpine@sha256:2fe0a023d07e6790eae845ce827da0fd57dae2698680a0b904176a889ecc9ca5
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
