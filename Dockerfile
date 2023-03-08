FROM google/cloud-sdk:421.0.0-alpine@sha256:f93f33673242a5a5b6b6e5f947502097d5998e34767945db1055f6d73ca744e4
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
