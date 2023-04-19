FROM google/cloud-sdk:427.0.0-alpine@sha256:6469988223533e79dd9d25fc224c8662f4ffa9285aae770d4060dab1b1449515
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
