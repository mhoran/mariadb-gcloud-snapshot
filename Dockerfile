FROM google/cloud-sdk:373.0.0-alpine@sha256:60b0292dc1194becc1fc2a8ba87942a9496e28c0c630bf6bb5fca53cd068d11d
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
