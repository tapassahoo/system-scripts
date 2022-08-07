SHELL=/bin/bash
echo ""
echo ""
echo "CRON:" `date`
set -xv
rsync -r /usr/local/bin/pull-data-from-graham.sh $(HOME)/academic-project/system-scripts/pull-data-from-graham-$(uname).sh 
rsync -r /usr/local/bin/pull-data-from-cedar.sh ~/academic-project/system-scripts/pull-data-from-cedar-$(uname).sh
rsync -r /usr/local/bin/pull-data-from-feynman.sh ~/academic-project/system-scripts/pull-data-from-feynman-$(uname).sh
rsync -r /usr/local/bin/pull-data-from-plot.sh ~/academic-project/system-scripts/pull-data-from-plot-$(uname).sh
rsync -r /usr/local/bin/push-article-uw.sh ~/academic-project/system-scripts/push-article-uw-$(uname).sh
rsync -r /usr/local/bin/push-system-scripts.sh ~/academic-project/system-scripts/push-system-scripts-$(uname).sh
#
rsync -r ~/.ssh/config ~/academic-project/system-scripts/ssh-config-$(uname)
rsync -r ~/.vimrc ~/academic-project/system-scripts/vimrc-script-$(uname)
rsync -r ~/.zshrc ~/academic-project/system-scripts/zshrc-$(uname)
rsync -r ~/.zprofile ~/academic-project/system-scripts/zprofile-$(uname)
rsync -r ~/.gitignore ~/academic-project/system-scripts/gitignore-$(uname)

cd ~/academic-project/system-scripts/
git add .
git commit -m "$(uname): Updated on $(date +"%d-%m-%Y")"
git push https://github.com/tapassahoo/System-Scripts.git
