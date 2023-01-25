FROM google/cloud-sdk:415.0.0-alpine@sha256:76ea3c805ee61a195aa0a04d3d1190dd54b644e9bdf4ce25ea881452e2ad76f8
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
