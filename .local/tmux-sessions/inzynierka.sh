#!/bin/bash

SESSIONNAME="inzynierka"
tmux has-session -t $SESSIONNAME &> /dev/null

if [ $? != 0 ]
 then
    tmux new-session -s $SESSIONNAME -c ~/src/inzynierka -d -n air
    tmux send-keys "air" Enter
    tmux new-window -c ~/src/inzynierka -n nvim
    tmux send-keys "v ." Enter
    #tmux select-pane -t 2
fi

tmux attach -t $SESSIONNAME
