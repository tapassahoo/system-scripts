#!/bin/sh
echo "================================================================"
echo ""
echo "CRON:" `date`
set -xv
#===============================================================
cp ~/.bashrc $HOME/academic-project/system-scripts/bashrc-ubuntu
cp ~/.vimrc  $HOME/academic-project/system-scripts/vimrc-ubuntu
cp ~/.gitignore  $HOME/academic-project/system-scripts/gitignore-ubuntu
cp ~/.ssh/config $HOME/academic-project/system-scripts/ssh-config-ubuntu
#
cp -r /usr/local/bin/push-system-scripts.sh $HOME/academic-project/system-scripts/push-system-scripts-ubuntu.sh
cp -r /usr/local/bin/pull-data-from-graham.sh $HOME/academic-project/system-scripts/pull-data-from-graham-ubuntu.sh

cd $HOME/academic-project/system-scripts/
git pull && git add . && git commit -m "Updated on $(date +"%d-%m-%Y")" && git push https://github.com/tapassahoo/System-Scripts.git 
