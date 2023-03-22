FROM google/cloud-sdk:423.0.0-alpine@sha256:f2f38228572a29c5de61c4f0850cb31ee2358ebb56228eb38c79db0fd79449ac
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
