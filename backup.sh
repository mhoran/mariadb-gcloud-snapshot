#!/bin/sh
set -e

TMPDIR=$(mktemp -d)
SNAPSHOT_PREFIX=${SNAPSHOT_PREFIX:-mariadb-snapshot}

mysql_root_password=$(cat "$MYSQL_ROOT_PASSWORD_FILE")
mysql_defaults_file="$TMPDIR/my.cnf"
echo "[client]
password=$mysql_root_password" > "$mysql_defaults_file"

sql_fifo="$TMPDIR/sql_fifo"
mkfifo -m 600 "$sql_fifo"
out_fifo="$TMPDIR/out_fifo"
mkfifo -m 600 "$out_fifo"

mysql --defaults-file="$mysql_defaults_file" < "$sql_fifo" > "$out_fifo" &

# keep the pipe open after we write to it
exec 3> "$sql_fifo"
echo "BACKUP STAGE START;
BACKUP STAGE BLOCK_COMMIT;"
echo "\\! echo backup_script_done;" > "$sql_fifo"

# Block until the above commands are executed successfully
grep -q "backup_script_done" < "$out_fifo"

format=%Y%m%d
DATE=$(date +$format)
gcloud compute disks snapshot "$DISK_NAME" --zone="$DISK_ZONE" \
  --snapshot-names="$SNAPSHOT_PREFIX-$DATE"

echo "BACKUP STAGE END;
exit" > "$sql_fifo"

archives=$(gcloud compute snapshots list \
  --filter="name~'$SNAPSHOT_PREFIX-' AND creationTimestamp<-P1W" \
  --format="table[no-heading](name)")
for archive in $archives
do
  gcloud -q compute snapshots delete "$archive"
done

rm -r "$TMPDIR"
