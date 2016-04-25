export ZSH=/Users/Matti/.oh-my-zsh

ZSH_THEME=agnoster

plugins=(git sublime node npm bower brew osx z)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

source $ZSH/oh-my-zsh.sh

#################
#### ALIASES ####
#################

# Code
alias proj='cd ~/code/projects'
alias sandbox='cd ~/code/sandbox'

# HTTP Server
alias pythonServer='python -m SimpleHTTPServer 9000'
alias rubyServer='ruby -run -e httpd . -p 8888'
alias ds='npm run devstart'
alias ft='gulp feature-tests'
alias ut='gulp unit-tests'

# Vagrant
alias vs='vagrant ssh'

# Ember
alias es='ember s'

# Rails
alias rs='rails s'
alias be='bundle exec'

# PG
# ref: http://superuser.com/questions/442554/postgresql-homebrew-installation-lacks-config-files
alias startpg='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias stoppg='pg_ctl -D /usr/local/var/postgres stop -s -m fast'

# GIT
alias gst='git status'
alias gco='git checkout'
alias gci='git commit'
alias gd='git diff'
alias gds='git diff --staged'
alias grb='git rebase'
alias rebasedev='git pull -r origin develop'
alias gbr='git branch'
alias gad='git add -A'
alias gpl='git pull'
alias gplr='git pull --rebase'
alias gpu='git push'
alias glg='git log --date-order --all --graph --format="%C(green)%h%Creset %C(yellow)%an%Creset %C(blue bold)%ar%Creset %C(red bold)%d%Creset%s"'
alias glg2='git log --date-order --all --graph --name-status --format="%C(green)%H%Creset %C(yellow)%an%Creset %C(blue bold)%ar%Creset %C(red bold)%d%Creset%s"'
alias gstpop='git stash pop'
alias gstlist='git stash list'

# ls alias for color-mode
alias ls='ls -lhaG'

# lock computer
alias lock='/System/Library/CoreServices/"Menu Extras"/User.menu/Contents/Resources/CGSession -suspend'

#npm
alias npmclean='sudo npm run clean'

# hibernation and sleep settings
alias hibernate='sudo pmset -a hibernatemode 25'
alias sleep='sudo pmset -a hibernatemode 0'
alias safesleep='sudo pmset -a hibernatemode 3'
alias smartsleep='sudo pmset -a hibernatemode 2'

# up 'n' folders
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

# simple ip
alias ip="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"

# web driver
# alias updateWebdriver='node_modules/.bin/webdriver-manager update'

# Home bin folder
export PATH=$PATH:$HOME/bin

export NVM_DIR="/Users/Matti/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

eval "$(thefuck --alias)"
