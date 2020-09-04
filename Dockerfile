FROM google/cloud-sdk:alpine
RUN apk add --no-cache mysql-client
COPY backup.sh /root/backup.sh
