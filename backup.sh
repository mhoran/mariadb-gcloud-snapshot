#!/bin/sh
set -e
mysql_root_password=$(cat "$MYSQL_ROOT_PASSWORD_FILE")
mysql_defaults_file=$(mktemp)
TMPDIR=$(mktemp -d)
mkfifo -m 600 "$TMPDIR/fifo"
echo "[client]
password=$mysql_root_password" > "$mysql_defaults_file"
mysql --defaults-file="$mysql_defaults_file" < "$TMPDIR/fifo" &
exec 3> "$TMPDIR/fifo"
echo "BACKUP STAGE START;
BACKUP STAGE BLOCK_COMMIT;" > "$TMPDIR/fifo"
format=%Y%m%d
DATE=$(date +$format)
gcloud compute disks snapshot "$DISK_NAME" \
  --snapshot-names="mariadb-snapshot-$DATE"
echo "BACKUP STAGE END;
exit" > "$TMPDIR/fifo"
archives=$(gcloud compute snapshots list \
  --filter="name~'mariadb-snapshot-' AND creationTimestamp<-P1W" \
  --format="table[no-heading](name)")
for archive in $archives
do
  gcloud -q compute snapshots delete "$archive"
done
