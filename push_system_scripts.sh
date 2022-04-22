#!/bin/bash
cp /usr/local/bin/pull_data_from_cedar.sh /Users/tsahoo/academic-project/system-scripts/
cp /usr/local/bin/pull_data_from_feynman.sh /Users/tsahoo/academic-project/system-scripts/ 
cp /usr/local/bin/pull_data_from_graham.sh /Users/tsahoo/academic-project/system-scripts/ 
cp /usr/local/bin/pull_data_from_plot.sh /Users/tsahoo/academic-project/system-scripts/ 
cp /usr/local/bin/pull_data_from_cedar.sh /Users/tsahoo/academic-project/system-scripts/
cp /usr/local/bin/push_article_uw.sh /Users/tsahoo/academic-project/system-scripts/
cp /usr/local/bin/push_system_scripts.sh /Users/tsahoo/academic-project/system-scripts/     
#
cp ~/.ssh/config /Users/tsahoo/academic-project/system-scripts/ssh-config
cp ~/.vimrc /Users/tsahoo/academic-project/system-scripts/vimrc-script
#cp ~/.bashrc /Users/tsahoo/academic-project/system-scripts/bashrc
cp ~/.bash_profile /Users/tsahoo/academic-project/system-scripts/bash_profile
cp ~/.zshrc /Users/tsahoo/academic-project/system-scripts/zshrc
cp ~/.zprofile /Users/tsahoo/academic-project/system-scripts/zprofile
cp ~/.gitignore /Users/tsahoo/academic-project/system-scripts/gitignore

cd /Users/tsahoo/academic-project/system-scripts/
#git remote set-url origin https://github.com/tapassahoo/system-scripts.git

git add . && git commit -m "update ${day}" && git push
