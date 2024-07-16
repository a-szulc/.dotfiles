#!/bin/bash

SESSIONNAME="dotfiles"
tmux has-session -t $SESSIONNAME &> /dev/null

if [ $? != 0 ]
 then
    tmux new-session -s $SESSIONNAME -c ~/.dotfiles -d -n nvim
    tmux send-keys "v ." Enter
fi

tmux attach -t $SESSIONNAME
