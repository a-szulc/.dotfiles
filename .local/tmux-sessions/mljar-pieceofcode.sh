#!/bin/bash

SESSIONNAME="piece-of-code"
tmux has-session -t $SESSIONNAME &> /dev/null

if [ $? != 0 ]
 then

    tmux new-session -s $SESSIONNAME -c ~/mljar/extensions/piece-of-code/recipes -d -n storybook
    tmux send-keys "yarn storybook" Enter

    tmux new-window -c ~/mljar/extensions/piece-of-code/recipes -n nvim
    tmux send-keys "v ." Enter

    tmux new-window -c ~/mljar/extensions/piece-of-code/recipes -n lazygit
    tmux send-keys "lazygit" Enter

    tmux new-window -c ~/mljar/extensions/piece-of-code/recipes -n jupyter
    tmux send-keys "yarn build" Enter
    tmux splitw -h -c ~/mljar/extensions/piece-of-code/extension
    # tmux new-window -c ~/mljar/extensions/piece-of-code/extension -n jlpm-watch
    tmux send-keys "source venv/bin/activate" Enter
    tmux send-keys "jlpm watch" Enter
    tmux splitw -c ~/mljar/extensions/piece-of-code/extension
    # tmux new-window -c ~/mljar/extensions/piece-of-code/extension -n jupyter-lab
    tmux send-keys "source venv/bin/activate" Enter
    tmux send-keys "jupyter lab" Enter
    # tmux select-layout "main-vertical"
    # tmux select-layout 52c4,160x39,0,0{80x39,0,0,27,79x39,81,0[79x19,81,0,28,79x19,81,20,29]}
    
    tmux new-window -c ~/src/python-db-queries -n script
    tmux send-keys "source venv/bin/activate" Enter
    tmux send-keys "v ." Enter

    tmux new-window -c ~/src/python-db-queries -n run
    tmux send-keys "source venv/bin/activate" Enter
    tmux send-keys "python "

    # tmux previous-window
    # tmux select-pane -t 3.left
    tmux select-window -t 3

fi

tmux attach -t $SESSIONNAME
