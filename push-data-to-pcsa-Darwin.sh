#!/bin/bash

# === Configuration ===
SOURCE_DIR1="$HOME/academic-project/quantum-chemistry-project/project1/src/"
SOURCE_DIR2="$HOME/academic-project/quantum-chemistry-project/project2/src/"
DEST_USER="pcsa"
DEST_HOST="pcsa"
DEST_PATH1="/home/pcsa/backup-sync/project1/src/"
DEST_PATH2="/home/pcsa/backup-sync/project2/src/"
LOG_DIR="$HOME/backup-logs"
RETENTION_DAYS=7
EXCLUDE_LIST=("*.log" "*.tmp" ".DS_Store" "*/HFChain" "*.csv" "plots_HFChain")

mkdir -p "$LOG_DIR"
TIMESTAMP=$(date +'%Y-%m-%d_%H-%M-%S')
LOG_FILE="$LOG_DIR/backup_$TIMESTAMP.log"

EXCLUDE_ARGS=()
for pattern in "${EXCLUDE_LIST[@]}"; do
	EXCLUDE_ARGS+=("--exclude=$pattern")
done

sync_project() {
	local SRC="$1"
	local DST="$2"
	local NAME="$3"

	echo ""
	echo "==== Syncing $NAME ===="
	echo "==== Syncing $NAME ====" >> "$LOG_FILE"

	TMPFILE=$(mktemp)
	rsync -avz --itemize-changes -e ssh "${EXCLUDE_ARGS[@]}" "$SRC" "${DEST_USER}@${DEST_HOST}:${DST}" \
		2>&1 | tee "$TMPFILE" | tee -a "$LOG_FILE" | grep -E '^[<>*]'

	STATUS=${PIPESTATUS[0]}
	echo "" | tee -a "$LOG_FILE"
	if [ $STATUS -eq 0 ]; then
		echo "Rsync for $NAME completed successfully at $(date)" | tee -a "$LOG_FILE"
		tail -n 5 "$TMPFILE" | tee -a "$LOG_FILE"  # Summary from rsync
	else
		echo "Rsync for $NAME failed at $(date) with status $STATUS" | tee -a "$LOG_FILE"
	fi

	rm -f "$TMPFILE"
}

sync_project "$SOURCE_DIR1" "$DEST_PATH1" "project1"
sync_project "$SOURCE_DIR2" "$DEST_PATH2" "project2"

# Cleanup
find "$LOG_DIR" -type f -name "backup_*.log" -mtime +$RETENTION_DAYS -exec rm -f {} \;

echo ""
echo "==== Syncing Final Information ===="
echo ""
echo "Backup completed at $TIMESTAMP"
echo "Full log saved to $LOG_FILE"

