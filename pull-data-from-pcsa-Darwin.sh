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
#REMOTE_SCRIPTS="pcsa:/home/pcsa/backup-sync/project2/src/structural-analysis/script_run_all_orca_serial_jobs_concurrently_general.py"
#LOCAL_SCRIPTS="${HOME}/academic-project/quantum-chemistry-project/project2/src/structural-analysis/"

#rsync -avz -e ssh "$REMOTE_SCRIPTS" "$LOCAL_SCRIPTS"

#-------------------------------
# Sync output data from remote
#-------------------------------
REMOTE_OUTPUT="pcsa:/home/pcsa/backup-sync/outputs/"
LOCAL_OUTPUT="${HOME}/academic-project/outputs/"

rsync -avz -e ssh \
  --exclude='**/*.*.tmp.*' \
  --exclude='**/*.*tmp' \
  "$REMOTE_OUTPUT" "$LOCAL_OUTPUT"

#-------------------------------
# Sync output data from remote
#-------------------------------
#REMOTE_OUTPUT="pcsa:/home/pcsa/backup-sync/exact-diagonalization/linear-rotors/python-real-basis-diag/submit_rotor_jobs_auto_with_tracking_and_summary.py"
#LOCAL_OUTPUT="${HOME}/academic-project/exact-diagonalization/linear-rotors/python-real-basis-diag/"
#
#rsync -avz -e ssh \
#  --exclude='**/*.*.tmp.*' \
#  --exclude='**/*.*tmp' \
#  "$REMOTE_OUTPUT" "$LOCAL_OUTPUT"


