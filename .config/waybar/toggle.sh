#!/bin/bash

if pgrep -x waybar >/dev/null
then
    pkill waybar
    sleep 0.1
else
    style_name=$(cat ~/.cache/waybar_current_theme)
    config_name=$(cat ~/.cache/waybar_current_config)
    waybar -c ~/.dotfiles/waybar/.config/waybar/configs/$config_name -s ~/.dotfiles/waybar/.config/waybar/styles/$style_name &
fi
