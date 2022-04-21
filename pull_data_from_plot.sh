#!/bin/bash
rsync -avze ssh graham:/home/tapas/ResultsOfPIGS/*.pdf /Users/tsahoo/dev-project/outputs/results_of_pigs/
rsync -avze ssh graham:/home/tapas/ResultsOfPIGS/for-vmd/*.xyz /Users/tsahoo/dev-project/outputs/results_of_pigs/for-vmd/
rsync -avze ssh graham:/home/tapas/ResultsOfPIGS/for-vmd/*.mpg /Users/tsahoo/dev-project/outputs/results_of_pigs/for-vmd/
