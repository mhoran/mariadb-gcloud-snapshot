FROM google/cloud-sdk:430.0.0-alpine@sha256:10bbf2db2828f7ce67ce49e4704b6225634319b9efef02d9a90185e107aef662
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
