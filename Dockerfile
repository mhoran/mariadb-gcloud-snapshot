FROM google/cloud-sdk:438.0.0-alpine@sha256:307a808f3bc8935ebd8ba29fae01250dda6a16df602650e38b98e7cf522ab9e8
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
