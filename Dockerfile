FROM google/cloud-sdk:369.0.0-alpine@sha256:c117234374b3b8501a93ab7008e6903e3dab1af7f5f9fa6871ebbe85f1923bbf
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
