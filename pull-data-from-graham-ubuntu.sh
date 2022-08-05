#!/bin/bash
echo ""
echo ""
echo "CRON:" `date`
set -xv
#rsync -avze ssh graham:/home/tapas/ResultsOfENT/* /Users/tsahoo/academic-project/outputs/results-of-ent/
#rsync -avze ssh graham:/home/tapas/ResultsOfPIGS/* /Users/tsahoo/ResultsOfPIGS/ --exclude 'PIGS-qTIP4P-RotDOFs-Rpt[789].[02468]Angstrom*-beta0.2Kinv*System2-p-H2O*' --exclude 'PIGS-qTIP4P-RotDOFs-Rpt10.0Angstrom*-beta0.2Kinv*System2-p-H2O*' 
#rsync -avze ssh graham:/home/tapas/ResultsOfPIGS/* --exclude 'core.*' /Users/tsahoo/academic-project/outputs/results-of-pigs/
#rsync -avze ssh graham:/home/tapas/ResultsOfPIMC/* /Users/tsahoo/academic-project/outputs/results-of-pimc/
#rsync -avze ssh graham:/scratch/tapas/linear-rotors/*gFactor[12468].0*System2HF*_ENSMBL61 /Users/tsahoo/linear-rotors/
#rsync -avze ssh graham:/scratch/tapas/linear-rotors/*gFactor16.0*System2HF*_ENSMBL[456][1] /Users/tsahoo/linear-rotors/
#rsync -avze ssh graham:/scratch/tapas/linear-rotors/*gFactor[012].[05]*System8HF*_ENSMBL-WOR-51 /Users/tsahoo/linear-rotors/
#rsync -avze ssh graham:/scratch/tapas/linear-rotors/*gFactor[012].[05]*System8HF*_ENSMBL-WOR-61 /Users/tsahoo/linear-rotors/
#rsync -avze ssh graham:/scratch/tapas/linear-rotors/*gFactor[012].[05]*System8HF*_ENSMBL-WOR-41 /Users/tsahoo/linear-rotors/
#rsync -avze ssh graham:/scratch/tapas/nonlinear-rotors/PIGS-qTIP4P-RotDOFs-Rpt3.[0-9]Angstrom*-beta0.1Kinv*System2-p-H2O*beads* /Users/tsahoo/nonlinear-rotors/
#rsync -avze ssh graham:/scratch/tapas/nonlinear-rotors/PIGS-qTIP4P-RotDOFs-Rpt[23].[0-9]Angstrom*-beta0.1Kinv*System11-p-H2O*beads101 /Users/tsahoo/nonlinear-rotors/
#rsync -avze ssh graham:/scratch/tapas/nonlinear-rotors/PIGS-qTIP4P-RotDOFs-Rpt[456].[05]Angstrom*-beta0.1Kinv*System11-p-H2O*beads101 /Users/tsahoo/nonlinear-rotors/
#rsync -avze ssh graham:/scratch/tapas/rot-dens-asymmetric-top-plot/rot-dens-matrix-of-ortho-H2O-Temp5.000000Kelvin-Beads24/rho.den018 --exclude 'core.*' $HOME/academic-project/outputs/rotational-propagator-for-water/
