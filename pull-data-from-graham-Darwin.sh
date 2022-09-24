#!/bin/bash
SHELL=/bin/bash
echo ""
echo ""
echo "CRON:" `date`
set -xv
rsync -avze ssh graham:/home/tapas/final-pigs-outputs-for-plotting/* ${HOME}/academic-project/outputs/final-pigs-outputs-for-plotting/
rsync -avze ssh graham:/home/tapas/final-dmrg-outputs-for-plotting/* ${HOME}/academic-project/outputs/final-dmrg-outputs-for-plotting/
