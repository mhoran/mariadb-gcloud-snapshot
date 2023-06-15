FROM google/cloud-sdk:435.0.1-alpine@sha256:c711568f60f858028f1328bc7c0c8c2f8de456ae9b40bf0b20515fee5822ac29
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
