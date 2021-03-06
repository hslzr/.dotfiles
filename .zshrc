# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/developer/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="agnoster"
ZSH_THEME="minimal"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=7

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
plugins=(git docker-compose ruby)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

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
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
unsetopt correct_all
setopt +o nomatch

#
#
#       ALIASES
#

# General stuff
alias please="sudo"
alias plz="sudo"
alias devspace="cd ~/dev"

# Docker
alias dcrc='docker-compose run --rm app rails c'
alias dcrdbm='docker-compose run --rm app rails db:migrate'
alias dcrr='docker-compose run --rm'
alias dcrspec='docker-compose run --rm test rspec'
alias dclean='docker rmi -f $(docker images -q -f dangling=true)'

# Git
alias gitclr='git branch --merged | egrep -v "(^\*|master|develop)" | xargs git branch -d'

# Python
alias python="python3"
alias pip="pip3"

# Ruby
alias be='bundle exec'

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="$HOME/.npm-packages/bin:$PATH"
export PATH="/usr/local/go/bin:$PATH"

eval $(thefuck --alias)

# Sadler Stuff
alias sadler="cd /opt/itexico/sadler"
alias sadlerup="sadler && docker-compose -f Sadler-docker/docker-compose/docker-compose.yml up -d"
alias sadlerup-log="sadler && docker-compose -f Sadler-docker/docker-compose/docker-compose.yml up"
alias sadlerdown="sadler && docker-compose -f Sadler-docker/docker-compose/docker-compose.yml down"
alias sadlersrc="cd /opt/itexico/sadler/Sadler"
alias sadlergetthisbread="sadlerdown && sadlerup && sadlersrc"
alias sadleryeet="sadlerdown && cd ~"

alias sshliquid="ssh secure@liquidweb"

# PHP
alias phpstan='docker run -v $PWD:/app --rm phpstan/phpstan'
