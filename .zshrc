# Path to your oh-my-zsh installation.
export ZSH=/Users/[USERNAME]/.oh-my-zsh

export UV_THREADPOOL_SIZE=0
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME=agnoster

# http://superuser.com/questions/433746/is-there-a-fix-for-the-too-many-open-files-in-system-error-on-os-x-10-7-1
ulimit -n 4096

MAILCHECK=0
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git sublime node npm bower brew osx z gitfast)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
#
#################
#### ALIASES ####
#################

# Common

alias weather='curl wttr.in/'
alias calendar='cal $(date +"%Y")'

# Projects
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
alias rebase='git pull -r origin develop'
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

# memory
alias mem='python ~/code/sandbox/utils/mem.py';

# web driver
# alias updateWebdriver='node_modules/.bin/webdriver-manager update'

# Home bin folder
export PATH=$PATH:$HOME/bin

# PG
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.5/bin

# Android SDK
export ANDROID_HOME="/Users/[USERNAME]/Library/Android/sdk"
export ANDROID_SDK_HOME="/Users/[USERNAME]/Library/Android/sdk"
export PATH=$PATH/Users/[USERNAME]/Library/Android/sdk/tools
export PATH=$PATH/Users/[USERNAME]/Library/Android/sdk/platform-tools

# Yarn
export PATH=$PATH:"/usr/local/Cellar/yarn/0.17.8/bin"

# export NVM_DIR="/Users/Matti/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

eval "$(thefuck --alias)"

# Launch VS Code
function code {
  if [[ $# = 0 ]]
  then
    open -a "Visual Studio Code"
  else
    local argPath="$1"
    [[ $1 = /* ]] && argPath="$1" || argPath="$PWD/${1#./}"
    open -a "Visual Studio Code" "$argPath"
  fi
}

###-tns-completion-start-###
if [ -f /Users/[USERNAME]/.tnsrc ]; then
    source /Users/[USERNAME]/.tnsrc
fi
###-tns-completion-end-###

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
