#!/bin/bash
rsync -avze ssh graham:/home/tapas/ResultsOfPIGS/*.pdf --exclude="core.*" /Users/tsahoo/academic-project/outputs/results-of-pigs/
rsync -avze ssh graham:/home/tapas/ResultsOfPIGS/for-vmd/*.xyz --exclude="core.*" /Users/tsahoo/academic-project/outputs/results-of-pigs/for-vmd/
rsync -avze ssh graham:/home/tapas/ResultsOfPIGS/for-vmd/*.mpg --exclude="core.*" /Users/tsahoo/academic-project/outputs/results-of-pigs/for-vmd/
