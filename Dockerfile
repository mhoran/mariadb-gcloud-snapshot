FROM google/cloud-sdk:418.0.0-alpine@sha256:2efaf225a4336e94bf0010faa5719981cdef722954271ba9eb8e3497f6100cfb
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
