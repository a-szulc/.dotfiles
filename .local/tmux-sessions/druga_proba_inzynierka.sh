#!/bin/bash

SESSIONNAME="d_p_inzyn"
tmux has-session -t $SESSIONNAME &> /dev/null

if [ $? != 0 ]
 then
    tmux new-session -s $SESSIONNAME -c ~/src/druga_proba_inzynierka -n nvim -d
    tmux send-keys "v ." Enter
    tmux new-window -c ~/src/druga_proba_inzynierka
    tmux new-window -c ~/src/druga_proba_inzynierka -n npm
    tmux send-keys "npm run dev" Enter
    tmux new-window -c ~/src/druga_proba_inzynierka -n lazygit
    tmux send-keys "lazygit" Enter
    #tmux select-pane -t 4
fi

tmux attach -t $SESSIONNAME
