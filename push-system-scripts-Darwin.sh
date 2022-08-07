SHELL=/bin/bash
echo ""
echo ""
echo "CRON:" `date`
set -xv
rsync -r /usr/local/bin/pull-data-from-graham.sh ${HOME}/academic-project/system-scripts/pull-data-from-graham-$(uname).sh 
rsync -r /usr/local/bin/pull-data-from-cedar.sh ${HOME}/academic-project/system-scripts/pull-data-from-cedar-$(uname).sh
rsync -r /usr/local/bin/pull-data-from-feynman.sh ${HOME}/academic-project/system-scripts/pull-data-from-feynman-$(uname).sh
rsync -r /usr/local/bin/pull-data-from-plot.sh ${HOME}/academic-project/system-scripts/pull-data-from-plot-$(uname).sh
rsync -r /usr/local/bin/push-article-uw.sh ${HOME}/academic-project/system-scripts/push-article-uw-$(uname).sh
rsync -r /usr/local/bin/push-system-scripts.sh ${HOME}/academic-project/system-scripts/push-system-scripts-$(uname).sh
#
rsync -r ~/.ssh/config ${HOME}/academic-project/system-scripts/ssh-config-$(uname)
rsync -r ~/.vimrc ${HOME}/academic-project/system-scripts/vimrc-script-$(uname)
rsync -r ~/.zshrc ${HOME}/academic-project/system-scripts/zshrc-$(uname)
rsync -r ~/.zprofile ${HOME}/academic-project/system-scripts/zprofile-$(uname)
rsync -r ~/.gitignore ${HOME}/academic-project/system-scripts/gitignore-$(uname)

cd ${HOME}/academic-project/system-scripts/
git pull
git add .
git commit -m "$(uname): Updated on $(date +"%d-%m-%Y")"
git push -f 
#https://github.com/tapassahoo/System-Scripts.git
