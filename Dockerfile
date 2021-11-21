FROM google/cloud-sdk:alpine@sha256:6912a0d382c7aece3f2fe917350b1c16821f05b1333244849a8bd297b448bbed
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
