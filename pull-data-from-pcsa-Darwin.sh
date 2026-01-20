#!/bin/bash
SHELL=/bin/bash

# Timestamp for cron run
echo -e "\n\n[CRON] Started at: $(date)"
set -xv  # Debug mode with verbose output

#-------------------------------
# Sync output data from remote
#-------------------------------
REMOTE_OUTPUT="tapas:/home/tapas/academic-project/exact-diagonalization/pkg_monomer_rotor/output/"
#LOCAL_OUTPUT="${HOME}/academic-project/outputs/"
LOCAL_OUTPUT="/Volumes/One Touch/pcsa-backup/outputs-of-exeact-diagonalization/"

rsync -avz -e ssh \
  --exclude='**/*.*.tmp.*' \
  --exclude='**/*.*tmp' \
  "$REMOTE_OUTPUT" "$LOCAL_OUTPUT"
