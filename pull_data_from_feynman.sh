#!/bin/bash
rsync -avzhe ssh feynman:/home/tapas/CodesForEigenValues/nonlinear-rotors/exact-energies-of-H2O/ground-state-*-vs-Rpt* /Users/tsahoo/dev-project/outputs/exact-computation/
rsync -avzhe ssh feynman:/home/tapas/CodesForEigenValues/nonlinear-rotors/exact-energies-of-H2O/ground-state-theta-* /Users/tsahoo/dev-project/outputs/exact-computation/
rsync -avzhe ssh feynman:/home/tapas/CodesForEigenValues/nonlinear-rotors/exact-energies-of-H2O/ground-state-order-parameters-* /Users/tsahoo/dev-project/outputs/exact-computation/ 
rsync -avzhe ssh feynman:/home/tapas/CodesForEigenValues/nonlinear-rotors/exact-energies-of-H2O/eigen-values* /Users/tsahoo/dev-project/outputs/exact-computation/
