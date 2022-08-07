#!/bin/bash -x
rsync -avze ssh cedar:~/ResultsOfPIGS/*qTIP4P-correct-cedar* ~/academic-project/outputs/results-of-pigs/
#rsync -avze ssh cedar:/scratch/tapas/nonlinear-rotors/PIGS-qTIP4P-RotDOFs-Rpt[1234567890].[05]Angstrom*-beta0.1Kinv*System2-p-H2O*beads101 /Users/tsahoo/nonlinear-rotors/
#rsync -avze ssh cedar:/scratch/tapas/nonlinear-rotors/PIGS-qTIP4P-RotDOFs-Rpt[2].[56]Angstrom*-beta0.1Kinv*System11-p-H2O*beads101 /Users/tsahoo/nonlinear-rotors/
