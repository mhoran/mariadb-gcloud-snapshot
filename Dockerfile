FROM google/cloud-sdk:426.0.0-alpine@sha256:10f7934d2ed354b866072a52a1d3a03d2fdadb5a7f37507938518f4a57d1b729
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
