#!/bin/bash
echo ""
echo ""
echo "CRON:" `date`
set -xv
rsync -avze ssh graham:/home/tapas/final-pigs-outputs-for-plotting/* --exclude 'core.*' ${HOME}/academic-project/outputs/final-pigs-outputs-for-plotting/
rsync -avze ssh graham:/home/tapas/final-dmrg-outputs-for-plotting/* --exclude 'core.*' ${HOME}/academic-project/outputs/final-dmrg-outputs-for-plotting/
#
#************************************ Some usefull examples *********************************************************#
#
#rsync -avze ssh graham:/home/tapas/ResultsOfPIGS/* /Users/tsahoo/ResultsOfPIGS/ --exclude 'PIGS-qTIP4P-RotDOFs-Rpt[789].[02468]Angstrom*-beta0.2Kinv*System2-p-H2O*' --exclude 'PIGS-qTIP4P-RotDOFs-Rpt10.0Angstrom*-beta0.2Kinv*System2-p-H2O*' 
#rsync -avze ssh graham:/scratch/tapas/linear-rotors/*gFactor16.0*System2HF*_ENSMBL[456][1] /Users/tsahoo/linear-rotors/
#rsync -avze ssh graham:/scratch/tapas/nonlinear-rotors/PIGS-qTIP4P-RotDOFs-Rpt[23].[0-9]Angstrom*-beta0.1Kinv*System11-p-H2O*beads101 /Users/tsahoo/nonlinear-rotors/
