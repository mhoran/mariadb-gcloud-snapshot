FROM google/cloud-sdk:376.0.0-alpine@sha256:7456928e5d261e0cc4d3c2ad49eb52f209fb185fa948f9117c8636131691e5c5
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
