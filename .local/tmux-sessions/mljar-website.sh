#!/bin/bash

SESSIONNAME="website-mljar"
tmux has-session -t $SESSIONNAME &> /dev/null

if [ $? != 0 ]
 then

    tmux new-session -s $SESSIONNAME -c ~/mljar/website-mljar/ -d -n website
    tmux send-keys "npm run dev" Enter
    tmux splitw -h -c ~/mljar/website-mljar/
    tmux send-keys "python3 updatemeta.py"
    # tmux send-keys "python3 updatemeta.py" Enter
    tmux new-window -c ~/mljar/website-mljar/src/content/notebooks -n notebooks
    tmux send-keys "v ." Enter
    tmux new-window -c ~/mljar/website-mljar/ -n lazygit
    tmux send-keys "lazygit" Enter
    # tmux previous-window
    # tmux select-pane -t 2

fi

tmux attach -t $SESSIONNAME
