FROM google/cloud-sdk:384.0.1-alpine@sha256:9ef099a68e77d630a67e27fb5b0dbb1f7297ea0d8fce52d2258b6ef3987ad7f4
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
