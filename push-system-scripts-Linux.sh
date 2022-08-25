#!/bin/sh
echo "================================================================"
echo ""
echo "CRON:" `date`
set -xv
#===============================================================
cp ~/.zshrc ${HOME}/academic-project/system-scripts/zshrc-$(uname)
cp ~/.vimrc  ${HOME}/academic-project/system-scripts/vimrc-$(uname)
cp ~/.gitignore  ${HOME}/academic-project/system-scripts/gitignore-$(uname)
cp ~/.ssh/config ${HOME}/academic-project/system-scripts/ssh-config-$(uname)
#
cp -r /usr/local/bin/push-system-scripts.sh ${HOME}/academic-project/system-scripts/push-system-scripts-$(uname).sh
cp -r /usr/local/bin/pull-data-from-graham.sh ${HOME}/academic-project/system-scripts/pull-data-from-graham-$(uname).sh

cd ${HOME}/academic-project/system-scripts/
git pull && git add . && git commit -m "$(uname): Updated on $(date +"%d-%m-%Y")" && git push -f
#https://github.com/tapassahoo/System-Scripts.git 
