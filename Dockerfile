FROM google/cloud-sdk:alpine@sha256:b7e46e1839c1d4f4020a7ed496999d5c302d2e8d9407cf0f43d1d84407aafb2f
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
