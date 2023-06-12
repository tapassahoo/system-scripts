#!/bin/bash
echo ""
echo ""
echo "CRON:" `date`
set -xv
# sshgraham
rsync -avze ssh graham:/home/tapas/.bashrc --exclude 'core.*' ${HOME}/academic-project/system-scripts/bashrc-graham
rsync -avze ssh graham:/home/tapas/final-pigs-outputs-for-plotting/* --exclude 'core.*' ${HOME}/academic-project/output/final-pigs-outputs-for-plotting/
rsync -avze ssh graham:/home/tapas/final-dmrg-outputs-for-plotting/* --exclude 'core.*' ${HOME}/academic-project/output/final-dmrg-outputs-for-plotting/
# sshcedar
rsync -avze ssh cedar:/home/tapas/.bashrc --exclude 'core.*' ${HOME}/academic-project/system-scripts/bashrc-cedar
rsync -avze ssh cedar:/home/tapas/final-pigs-outputs-for-plotting/* --exclude 'core.*' ${HOME}/academic-project/output/final-pigs-outputs-for-plotting/
rsync -avze ssh cedar:/home/tapas/final-dmrg-outputs-for-plotting/* --exclude 'core.*' ${HOME}/academic-project/output/final-dmrg-outputs-for-plotting/
