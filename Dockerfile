FROM google/cloud-sdk:365.0.1-alpine@sha256:7a0fe2c9ce0299ab13985028c569080dd9ca899222fbe1ebdc1888e11f0da009
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
