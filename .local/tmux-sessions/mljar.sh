#!/bin/bash

SESSIONNAME="mljar"
tmux has-session -t $SESSIONNAME &> /dev/null

if [ $? != 0 ]
 then
    tmux new-session -s $SESSIONNAME -c ~/mljar/report -d -n report
    tmux send-keys "v ." Enter
    tmux new-window -c ~/
    tmux new-window -c ~/mljar -n sugesstions
    tmux send-keys "v suggestions.md" Enter
    tmux previous-window
fi

tmux attach -t $SESSIONNAME
