FROM google/cloud-sdk:alpine@sha256:edeed30924c913d06d725c4f40093bf02b52776c49ce7176fef4f54bf26eeb71
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
