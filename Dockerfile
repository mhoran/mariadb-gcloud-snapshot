FROM google/cloud-sdk:403.0.0-alpine@sha256:3791683bade5ec26f37527d09cd531a617c0fb96da89154eb2b0484c97020f4a
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
