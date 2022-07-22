#!/bin/bash
cp /usr/local/bin/pull-data-from-graham.sh ~/academic-project/system-scripts/ 
cp /usr/local/bin/pull-data-from-cedar.sh ~/academic-project/system-scripts/
cp /usr/local/bin/pull-data-from-feynman.sh ~/academic-project/system-scripts/ 
cp /usr/local/bin/pull-data-from-plot.sh ~/academic-project/system-scripts/ 
cp /usr/local/bin/push-article-uw.sh ~/academic-project/system-scripts/
cp /usr/local/bin/push-system-scripts.sh ~/academic-project/system-scripts/     
#
cp ~/.ssh/config ~/academic-project/system-scripts/ssh-config-macos
cp ~/.vimrc ~/academic-project/system-scripts/vimrc-script-macos
cp ~/.zshrc /Users/tsahoo/academic-project/system-scripts/zshrc-macos
cp ~/.zprofile /Users/tsahoo/academic-project/system-scripts/zprofile-macos
cp ~/.gitignore /Users/tsahoo/academic-project/system-scripts/gitignore-macos

cd /Users/tsahoo/academic-project/system-scripts/
acp
cd ~
