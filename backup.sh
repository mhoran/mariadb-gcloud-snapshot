#!/bin/sh
set -e

mysql_root_password=$(cat "$MYSQL_ROOT_PASSWORD_FILE")
mysql_defaults_file=$(mktemp)
echo "[client]
password=$mysql_root_password" > "$mysql_defaults_file"

fifo_tmpdir=$(mktemp -d)
mkfifo -m 600 "$fifo_tmpdir/fifo"

mysql --defaults-file="$mysql_defaults_file" < "$fifo_tmpdir/fifo" &

# keep the pipe open after we write to it
exec 3> "$fifo_tmpdir/fifo"
echo "BACKUP STAGE START;
BACKUP STAGE BLOCK_COMMIT;" > "$fifo_tmpdir/fifo"

format=%Y%m%d
DATE=$(date +$format)
gcloud compute disks snapshot "$DISK_NAME" --zone="$DISK_ZONE" \
  --snapshot-names="mariadb-snapshot-$DATE"

echo "BACKUP STAGE END;
exit" > "$fifo_tmpdir/fifo"

rm -r "$fifo_tmpdir"
rm "$mysql_defaults_file"

archives=$(gcloud compute snapshots list \
  --filter="name~'mariadb-snapshot-' AND creationTimestamp<-P1W" \
  --format="table[no-heading](name)")
for archive in $archives
do
  gcloud -q compute snapshots delete "$archive"
done
