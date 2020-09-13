#!/bin/sh
set -e

TMPDIR=$(mktemp -d)
SNAPSHOT_PREFIX=${SNAPSHOT_PREFIX:-mariadb-snapshot}

mysql_root_password=$(cat "$MYSQL_ROOT_PASSWORD_FILE")
mysql_defaults_file="$TMPDIR/my.cnf"
echo "[client]
password=$mysql_root_password" > "$mysql_defaults_file"

fifo_path="$TMPDIR/fifo"
mkfifo -m 600 "$fifo_path"

mysql --defaults-file="$mysql_defaults_file" < "$fifo_path" &
pid=$!

# keep the pipe open after we write to it
exec 3> "$fifo_path"
echo "BACKUP STAGE START;
BACKUP STAGE BLOCK_COMMIT;" > "$fifo_path"

sleep 1
kill -0 $pid

format=%Y%m%d
DATE=$(date +$format)
gcloud compute disks snapshot "$DISK_NAME" --zone="$DISK_ZONE" \
  --snapshot-names="$SNAPSHOT_PREFIX-$DATE"

echo "BACKUP STAGE END;
exit" > "$fifo_path"

archives=$(gcloud compute snapshots list \
  --filter="name~'$SNAPSHOT_PREFIX-' AND creationTimestamp<-P1W" \
  --format="table[no-heading](name)")
for archive in $archives
do
  gcloud -q compute snapshots delete "$archive"
done

rm -r "$TMPDIR"
