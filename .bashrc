#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

source ~/.git-prompt.sh

# red
# PS1='\[\e[91;1m\]\w\[\e[0m\]\$ '

# green
# PS1='\[\e[92;1m\]\w\[\e[0m\]\$ '

# dim green
# PS1='\[\e[32;1m\]\w\[\e[0m\]\$ '

# dim light blue
#PS1='\[\e[36;1m\]\w\[\e[0m\]\$ '

# parse_git_branch() {
#      git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
# }
# 
# export PS1='\[\e[36;1m\]\w \[\e[0;95m\]\$(parse_git_branch)\[\e[00m\]$ '

PS1='\[\e[36m\]\w \[\e[95m\]$(__git_ps1 "(%s)")\[\e[00m\]$ '

# alias ls='ls --color=auto'
# alias la='ls -l'
# alias ll='ls -la'

alias ls='eza --color=always'
alias la='eza -a'
alias ll='eza -al'

alias grep='grep --color=auto'

alias poff='systemctl poweroff'

alias v='nvim'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

alias dot='cd ~/.dotfiles'
alias conf='cd ~/.config'

alias cp='cp -vi'
alias mv='mv -vi'

alias ga='git add'
alias gc='git commit'
alias gs='git status'
alias gsg='git stage'
alias gp='git push'

alias update='sudo dnf update'

alias cat='bat'
