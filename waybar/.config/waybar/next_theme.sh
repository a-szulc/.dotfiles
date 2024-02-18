#!/bin/bash

current_theme=$(cat ~/.cache/waybar_current_theme 2>/dev/null)

#theme_list=($(find ./styles -maxdepth 1 -type f -not -path '*/\.*' -exec basename {}\;))
theme_list=($(find ~/.dotfiles/waybar/.config/waybar/styles -maxdepth 1 -type f -exec basename {} \;))

# to print whole list
#echo ${theme_list[*]}
# to print length of list
#echo ${#theme_list[@]}

index=-1
for ((i=0; i<${#theme_list[@]}; i++)); do
    if [[ ${theme_list[$i]} == $current_theme ]]; then
        index=$i
        break
    fi
done

next_index=$((index + 1))

if [[ $index == -1 || $next_index -ge ${#theme_list[@]} ]]; then
    next_index=0
fi

next_theme=${theme_list[$next_index]}

echo $next_theme > ~/.cache/waybar_current_theme

pkill waybar
waybar -s ~/.dotfiles/waybar/.config/waybar/styles/$next_theme &
