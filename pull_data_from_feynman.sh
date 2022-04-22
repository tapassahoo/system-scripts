#!/bin/bash
rsync -avzhe ssh feynman:/home/tapas/CodesForEigenValues/nonlinear-rotors/exact-energies-of-H2O/ground-state-*-vs-Rpt* /Users/tsahoo/academic-project/outputs/exact-computation/
rsync -avzhe ssh feynman:/home/tapas/CodesForEigenValues/nonlinear-rotors/exact-energies-of-H2O/ground-state-theta-* /Users/tsahoo/academic-project/outputs/exact-computation/
rsync -avzhe ssh feynman:/home/tapas/CodesForEigenValues/nonlinear-rotors/exact-energies-of-H2O/ground-state-order-parameters-* /Users/tsahoo/academic-project/outputs/exact-computation/ 
rsync -avzhe ssh feynman:/home/tapas/CodesForEigenValues/nonlinear-rotors/exact-energies-of-H2O/eigen-values* /Users/tsahoo/academic-project/outputs/exact-computation/
