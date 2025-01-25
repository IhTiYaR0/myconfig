#!/bin/bash

# Список тем для выбора
THEMES="<span font='Arial 20' color='#FFFFFF'><b>Random 🎲</b></span>\n<span font='Arial 20' color='#68f26d'><b>Default 🌿</b></span>\n<span font='Arial 20' color='#FFFF00'><b>Lightning ⚡</b></span>\n<span font='Arial 20' color='#00e5ff'><b>Wind 🌪️</b></span>"

# Выбор темы через wofi
CHOICE=$(echo -e "$THEMES" | wofi --dmenu --p "Выберите тему:")

case "$CHOICE" in
  "<span font='Arial 20' color='#FFFFFF'><b>Random 🎲</b></span>")
    # Массив тем
     RANDOM_CHOICE=$((RANDOM % 3))

    if [[ $RANDOM_CHOICE -eq 0 ]]; then
      /home/ihti/.config/hypr/Themes/defuld.sh
    elif [[ $RANDOM_CHOICE -eq 1 ]]; then
      /home/ihti/.config/hypr/Themes/Yellow.sh
    else
      /home/ihti/.config/hypr/Themes/blue.sh
    fi
    ;;
  "<span font='Arial 20' color='#68f26d'><b>Default 🌿</b></span>")
    /home/ihti/.config/hypr/Themes/defuld.sh
    ;;
  "<span font='Arial 20' color='#FFFF00'><b>Lightning ⚡</b></span>")
    /home/ihti/.config/hypr/Themes/Yellow.sh
    ;;
  "<span font='Arial 20' color='#00e5ff'><b>Wind 🌪️</b></span>")
    /home/ihti/.config/hypr/Themes/blue.sh
    ;;
  
  *)
    echo "Вы не выбрали тему или выбрали неверный пункт."
    ;;
esac


