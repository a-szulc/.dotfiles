#!/bin/bash

SESSIONNAME="autoML"
tmux has-session -t $SESSIONNAME &> /dev/null

if [ $? != 0 ]
 then

    tmux new-session -s $SESSIONNAME -c ~/mljar/mljar-supervised -d -n nvim
    tmux send-keys "v ." Enter

    tmux new-window -c ~/mljar/mljar-supervised -n lazygit
    tmux send-keys "lazygit" Enter

fi

tmux attach -t $SESSIONNAME
