#!/bin/bash
SHELL=/bin/bash

# Timestamp for cron run
echo -e "\n\n[CRON] Push started at: $(date)"
#set -xv  # Debug mode with verbose output

#-------------------------------------------
# Push source codes of project1 to remote
#-------------------------------------------
LOCAL_SCRIPTS="${HOME}/academic-project/quantum-chemistry-project/project1/src/structural-analysis/"
REMOTE_SCRIPTS="pcsa:/home/pcsa/backup-sync/project1/src/structural-analysis/"

rsync -avz -e ssh \
  --exclude='**/*.*.tmp.*' \
  --exclude='**/*.*tmp' \
  "$LOCAL_SCRIPTS" "$REMOTE_SCRIPTS"

#-------------------------------------------
# Push source scripts of project2 to remote
#-------------------------------------------
#LOCAL_SCRIPTS="${HOME}/academic-project/quantum-chemistry-project/project2/src/structural-analysis/script_run_all_orca_serial_jobs_concurrently_general.py"
#REMOTE_SCRIPTS="pcsa:/home/pcsa/backup-sync/project2/src/structural-analysis/"

#rsync -avz -e ssh \
#  --exclude='**/*.*.tmp.*' \
#  --exclude='**/*.*tmp' \
#  "$LOCAL_SCRIPTS" "$REMOTE_SCRIPTS"


#-------------------------------------------
# Push source codes of project-exact-diagonalization to remote
#-------------------------------------------
LOCAL_SCRIPTS="${HOME}/academic-project/exact-diagonalization"
REMOTE_SCRIPTS="pcsa:/home/pcsa/backup-sync/"

rsync -avz -e ssh \
  --exclude='**/*.*.tmp.*' \
  --exclude='**/*.*tmp' \
  --exclude='**/*.git' \
  --exclude='**/*output*' \
  "$LOCAL_SCRIPTS" "$REMOTE_SCRIPTS"
