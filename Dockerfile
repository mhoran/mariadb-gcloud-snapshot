FROM google/cloud-sdk:417.0.1-alpine@sha256:1639253b2b4f2951b27f886333ce14fd6b5bf68cc329202a463301c776ff2792
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
