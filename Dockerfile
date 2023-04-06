FROM google/cloud-sdk:425.0.0-alpine@sha256:1ffc252f80f43ceaa98ca2caffb9f5d4692440d157087c353c4404cab7ba10e4
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
