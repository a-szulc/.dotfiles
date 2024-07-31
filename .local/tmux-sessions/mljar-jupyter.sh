#!/bin/bash

SESSIONNAME="jupyter"
tmux has-session -t $SESSIONNAME &> /dev/null

if [ $? != 0 ]
then

    tmux new-session -s $SESSIONNAME -c ~/mljar/extensions/piece-of-code/recipes -d -n jupyter
    tmux send-keys "yarn build" Enter
    tmux splitw -c ~/mljar/extensions/piece-of-code/extension -h
    # tmux new-window -c ~/mljar/extensions/piece-of-code/extension -n jlpm-watch
    tmux send-keys "source venv/bin/activate" Enter
    tmux send-keys "jlpm watch" Enter
    tmux splitw -c ~/mljar/extensions/piece-of-code/extension
    # tmux new-window -c ~/mljar/extensions/piece-of-code/extension -n jupyter-lab
    tmux send-keys "source venv/bin/activate" Enter
    tmux send-keys "jupyter lab" Enter
    # tmux select-layout "main-vertical"
    # tmux select-layout 52c4,160x39,0,0{80x39,0,0,27,79x39,81,0[79x19,81,0,28,79x19,81,20,29]}

fi

tmux attach -t $SESSIONNAME
