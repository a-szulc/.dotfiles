#!/bin/bash

SESSIONNAME="piece-of-code"
tmux has-session -t $SESSIONNAME &> /dev/null

if [ $? != 0 ]
 then
    tmux new-session -s $SESSIONNAME -c ~/mljar/extensions/piece-of-code/recipes -d -n yarn
    tmux send-keys "yarn storybook" Enter
    tmux new-window -c ~/mljar/extensions/piece-of-code/recipes -n nvim
    tmux send-keys "v ." Enter
    tmux new-window -c ~/mljar/extensions/piece-of-code/recipes -n lazygit
    tmux send-keys "lazygit" Enter
    tmux new-window -c ~/src/python-db-queries -n db-script
    tmux send-keys "v ." Enter
    tmux previous-window
fi

tmux attach -t $SESSIONNAME
