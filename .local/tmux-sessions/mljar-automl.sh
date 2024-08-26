#!/bin/bash

SESSIONNAME="autoML"
tmux has-session -t $SESSIONNAME &> /dev/null

if [ $? != 0 ]
 then

    tmux new-session -s $SESSIONNAME -c ~/mljar/mljar-supervised -d -n nvim
    tmux send-keys "source venv/bin/activate" Enter
    tmux send-keys "v ." Enter

    tmux new-window -c ~/mljar/mljar-supervised -n pytest
    tmux send-keys "source venv/bin/activate" Enter
    tmux send-keys "pytest tests/ -v"

    tmux new-window -c ~/mljar/mljar-supervised -n errors
    tmux send-keys "nvim automl_tests/errors.md"

    tmux new-window -c ~/mljar/mljar-supervised -n failed_tests
    tmux send-keys "nvim failed_tests"

    tmux new-window -c ~/mljar/mljar-supervised -n lazygit
    tmux send-keys "lazygit" Enter

fi

tmux attach -t $SESSIONNAME
