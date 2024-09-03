#!/bin/bash

SESSIONNAME="neuron"
tmux has-session -t $SESSIONNAME &> /dev/null

if [ $? != 0 ]
 then

    tmux new-session -s $SESSIONNAME -c ~/src/superneuron -d -n nvim
    tmux send-keys "source venv/bin/activate" Enter
    tmux send-keys "v ." Enter

    tmux new-window -c ~/src/superneuron -n lazygit
    tmux send-keys "lazygit" Enter

fi

tmux attach -t $SESSIONNAME
