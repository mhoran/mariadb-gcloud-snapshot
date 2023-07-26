FROM google/cloud-sdk:440.0.0-alpine@sha256:d4b53324d0e5949e13991104c69028f3caaba84733d5a6043c23bf946bc16d77
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
