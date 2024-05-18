#!/bin/bash

# bat ~/.dotfiles/hypr/.config/hypr/themes

current_theme=$(cat ~/.cache/hyprland_current_theme 2>/dev/null)

theme_list=($(find ~/.dotfiles/hypr/.config/hypr/themes/ -maxdepth 1 -type f -exec basename {} \;))

# to print whole list
#echo ${theme_list[*]}
# to print length of list
#echo ${#theme_list[@]}
echo ${current_theme}

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

echo $next_theme > ~/.cache/hyprland_current_theme

echo ${next_theme}
#cat ~/.dotfiles/hypr/.config/hypr/themes/${next_theme}
cat ~/.dotfiles/hypr/.config/hypr/themes/${next_theme} > ~/.dotfiles/hypr/.config/hypr/current_theme.conf
sleep 5
hyprctl reload

