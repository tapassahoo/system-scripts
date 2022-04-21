#!/bin/bash
rsync -avze ssh graham:/home/tapas/ResultsOfPIGS/*.pdf /Users/tsahoo/dev-project/outputs/results-of-pigs/
rsync -avze ssh graham:/home/tapas/ResultsOfPIGS/for-vmd/*.xyz /Users/tsahoo/dev-project/outputs/results-of-pigs/for-vmd/
rsync -avze ssh graham:/home/tapas/ResultsOfPIGS/for-vmd/*.mpg /Users/tsahoo/dev-project/outputs/results-of-pigs/for-vmd/
