#!/bin/bash
SHELL=/bin/bash

echo -e "\n\nCRON: $(date)"
set -xv

REMOTE_BASE="pcsa:/home/pcsa/backup-sync/project1"
LOCAL_BASE="${HOME}/academic-project/quantum-chemistry-project/project1"

#rsync -avze ssh "${REMOTE_BASE}/src/structural-analysis/" "${LOCAL_BASE}/src/structural-analysis/"
rsync -avze ssh "${REMOTE_BASE}/output/structural-analysis/*" "${LOCAL_BASE}/output/structural-analysis/"

