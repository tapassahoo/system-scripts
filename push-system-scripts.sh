#!/bin/bash
rsync -r /usr/local/bin/pull-data-from-graham.sh ~/academic-project/system-scripts/ 
rsync -r /usr/local/bin/pull-data-from-cedar.sh ~/academic-project/system-scripts/
rsync -r /usr/local/bin/pull-data-from-feynman.sh ~/academic-project/system-scripts/ 
rsync -r /usr/local/bin/pull-data-from-plot.sh ~/academic-project/system-scripts/ 
rsync -r /usr/local/bin/push-article-uw.sh ~/academic-project/system-scripts/
rsync -r /usr/local/bin/push-system-scripts.sh ~/academic-project/system-scripts/     
#
rsync -r ~/.ssh/config ~/academic-project/system-scripts/ssh-config-macos
rsync -r ~/.vimrc ~/academic-project/system-scripts/vimrc-script-macos
rsync -r ~/.zshrc /Users/tsahoo/academic-project/system-scripts/zshrc-macos
rsync -r ~/.zprofile /Users/tsahoo/academic-project/system-scripts/zprofile-macos
rsync -r ~/.gitignore /Users/tsahoo/academic-project/system-scripts/gitignore-macos

cd /Users/tsahoo/academic-project/system-scripts/
acp
cd ~
