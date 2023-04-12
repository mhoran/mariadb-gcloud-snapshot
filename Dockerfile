FROM google/cloud-sdk:426.0.0-alpine@sha256:10c3319aa3ceb5c3644e9ee8cd70fc5b785fac3411bb803f162e419e42f6a6a6
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
