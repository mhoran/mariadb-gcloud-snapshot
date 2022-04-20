FROM google/cloud-sdk:382.0.0-alpine@sha256:1def42abf2e77deb53cd7b60dfbb834252e5be8b70d19fab960029ba66449c2c
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
