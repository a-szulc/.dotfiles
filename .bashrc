#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# red
# PS1='\[\e[91;1m\]\w\[\e[0m\]\$ '

# green
# PS1='\[\e[92;1m\]\w\[\e[0m\]\$ '

# dim green
# PS1='\[\e[32;1m\]\w\[\e[0m\]\$ '

# dim light blue
PS1='\[\e[36;1m\]\w\[\e[0m\]\$ '

alias ls='ls --color=auto'
alias la='ls -l'
alias ll='ls -la'

alias grep='grep --color=auto'

alias poff='systemctl poweroff'
alias logout='hyprclt dispatch exit'

alias v='nvim'
alias wifi='nmtui'

alias ..='cd ..'

