#!/bin/bash

SESSIONNAME="mljar"
tmux has-session -t $SESSIONNAME &> /dev/null

if [ $? != 0 ]
then
    tmux new-session -s $SESSIONNAME -c ~/mljar/extensions/piece-of-code/recipes -d -n yarn-build
    tmux send-keys "yarn build" Enter
    tmux new-window -c ~/mljar/extensions/piece-of-code/extension -n jlpm-watch
    tmux send-keys "source venv/bin/activate" Enter
    tmux send-keys "jlpm watch" Enter
    tmux new-window -c ~/mljar/extensions/piece-of-code/extension -n jupyter-lab
    tmux send-keys "source venv/bin/activate" Enter
    tmux send-keys "jupyter lab" Enter
fi

tmux attach -t $SESSIONNAME
