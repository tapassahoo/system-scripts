#!/bin/bash
SHELL=/bin/bash

# Timestamp for cron run
echo -e "\n\n[CRON] Started at: $(date)"
set -xv  # Debug mode with verbose output

#-------------------------------
# Sync output data from remote
#-------------------------------
REMOTE_OUTPUT="pcsa:/home/pcsa/backup-sync/project2/output/"
LOCAL_OUTPUT="${HOME}/academic-project/output-orca/structural-analysis-HFChain/"

rsync -avz -e ssh \
  --exclude='**/*.*.tmp.*' \
  --exclude='**/*.*tmp' \
  "$REMOTE_OUTPUT" "$LOCAL_OUTPUT"

#-------------------------------
# Sync source scripts from remote
#-------------------------------
#REMOTE_SCRIPTS="pcsa:/home/pcsa/backup-sync/project2/src/structural-analysis/"
#LOCAL_SCRIPTS="${HOME}/academic-project/quantum-chemistry-project/project2/src/structural-analysis/"

#rsync -avz -e ssh "$REMOTE_SCRIPTS" "$LOCAL_SCRIPTS"


