FROM google/cloud-sdk:441.0.0-alpine@sha256:c07fb6784753de34a48338313860a2b557a14aca4b57022b0b034475c80af19a
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
