FROM google/cloud-sdk:alpine@sha256:bc6be13f99a45afb5055c44d140bfde50ab722384fb64533154efbd3253bc4b9
LABEL org.opencontainers.image.description="A script for backing up MariaDB using BACKUP STAGE and Google Cloud snapshots."
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
