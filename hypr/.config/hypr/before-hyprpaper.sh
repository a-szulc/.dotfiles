#!/bin/bash

file=$(find ~/pics/wall/ -type f -name "*.jpg" -o -name "*.png" | shuf -n 1)

# wal -nets -i ~/pics/wall/

# file=$(cat ~/.cache/wal/wal)


# hyprctl hyprpaper preload $file
# hyprctl hyprpaper wallpaper eDP-1,$file

# hyprctl hyprpaper unload all


echo preload = $file > ~/.config/hypr/hyprpaper.conf
echo wallpaper = eDP-1,$file >> ~/.config/hypr/hyprpaper.conf
echo splash = no >> ~/.config/hypr/hyprpaper.conf
echo ipc = no >> ~/.config/hypr/hyprpaper.conf

# echo $file > ~/tempp

# wal -c
# wal -netsq -i $file
# 
# waybar &

# ./.config/waybar/reload.sh

