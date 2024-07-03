#!/bin/bash

selected=$(find ~/.dotfiles/.local/tmux-sessions -mindepth 1 -maxdepth 1 | fzf)

if [[ -z $selected ]]; then
    exit 0
fi

selected_name=$(basename "$selected")

if [[ -z $TMUX ]]; then
    echo "in"
    echo $selected
    echo $selected_name
    $selected
    exit 0
fi

echo "out"
