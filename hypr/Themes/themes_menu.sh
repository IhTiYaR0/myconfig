#!/bin/bash

# Список тем для выбора
THEMES="<span font='Arial 20' color='#FFFFFF'><b>Defuld ⚪</b></span>\n<span font='Arial 20' color='#FFFF00'><b>Yellow ⭐</b></span>"

# Выбор темы через wofi
CHOICE=$(echo -e "$THEMES" | wofi --dmenu --p "Выберите тему:")

case "$CHOICE" in
  "<span font='Arial 20' color='#FFFFFF'><b>Defuld ⚪</b></span>")
    /home/ihti/.config/hypr/Themes/defuld.sh
    ;;
  "<span font='Arial 20' color='#FFFF00'><b>Yellow ⭐</b></span>")
    /home/ihti/.config/hypr/Themes/Yellow.sh
    ;;
  *)
    echo "Вы не выбрали тему или выбрали неверный пункт."
    ;;
esac
