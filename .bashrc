# ~/.bashrc
iatest=$(expr index "$-" i)

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Don't put duplicate lines in the history and do not add lines that start with a space
export HISTCONTROL=erasedups:ignoredups:ignorespace

# Check the window size after each command and, if necessary, update the values of LINES and COLUMNS
shopt -s checkwinsize

# Causes bash to append to history instead of overwriting it so if you start a new terminal, you have old session history
shopt -s histappend
PROMPT_COMMAND='history -a'

# Ignore case on auto-completion
# Note: bind used instead of sticking these in .inputrc
if [[ $iatest -gt 0 ]]; then bind "set completion-ignore-case on"; fi

# Show auto-completion list automatically, without double tab
if [[ $iatest -gt 0 ]]; then bind "set show-all-if-ambiguous On"; fi

# # Color for manpages in less makes manpages a little easier to read
# export LESS_TERMCAP_mb=$'\E[01;31m'
# export LESS_TERMCAP_md=$'\E[01;31m'
# export LESS_TERMCAP_me=$'\E[0m'
# export LESS_TERMCAP_se=$'\E[0m'
# export LESS_TERMCAP_so=$'\E[01;44;33m'
# export LESS_TERMCAP_ue=$'\E[0m'
# export LESS_TERMCAP_us=$'\E[01;32m'

#source ~/.git-prompt.sh
#source /usr/share/git/completion/git-completion.bash

#export PATH=$PATH:/home/adas/idea-IU-233.14475.28/bin

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

#PS1='\[\e[36m\]\w \[\e[95m\]$(__git_ps1 "(%s)")\[\e[00m\]$ '

# alias ls='ls --color=auto'
# alias la='ls -l'
# alias ll='ls -la'

alias ls='eza --color=always'
alias la='eza -a'
alias ll='eza -al'

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
alias gp='git push'

#alias update='sudo pacman -Syu'
alias update='sudo dnf update'

alias cat='bat'

alias hist='history | grep -i'

export QSYS_ROOTDIR="/home/adas/.cache/yay/quartus-free/pkg/quartus-free-quartus/opt/intelFPGA/23.1/quartus/sopc_builder/bin"
export GOPATH=$HOME/go

eval "$(thefuck --alias)"

eval "$(starship init bash)"
