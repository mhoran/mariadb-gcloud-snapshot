FROM google/cloud-sdk:alpine@sha256:5fa4d14223791ca613d99b1c920d2e9e5cda8dc5ac55006a50f66d53595be909
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
