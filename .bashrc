#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

source ~/.git-prompt.sh
source /usr/share/git/completion/git-completion.bash

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

alias ls='ls --color=auto'
alias la='ls -l'
alias ll='ls -la'

alias grep='grep --color=auto'

alias poff='systemctl poweroff'
alias logout='sleep 1; hyprctl dispatch exit;sleep 1'

alias v='nvim'
alias wifi='nmtui'

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
alias gp='git stage'

alias update='sudo pacman -Syu'
