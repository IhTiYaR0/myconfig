sed -i 's/col.active_border = rgba([0-9A-F]\{8\})/col.active_border = rgba(FFFFFFFF)/g' ~/.config/hypr/hyprland.conf 
sed -i 's/col.inactive_border = rgba([0-9A-F]\{8\})/col.inactive_border = rgba(00000040)/g' ~/.config/hypr/hyprland.conf && hyprctl reload
sed -i "s/set -U fish_color_cwd '[#0-9a-fA-F]*'/set -U fish_color_cwd '#ECECEC'/g" ~/.config/fish/config.fish 
sed -i "s/set -U fish_color_user '[#0-9a-fA-F]*'/set -U fish_color_user '#ECECEC'/g" ~/.config/fish/config.fish
sed -i "s/set -U fish_color_command '[#0-9a-fA-F]*'/set -U fish_color_command '#ECECEC'/g" ~/.config/fish/config.fish
sed -i 's/background #[0-9a-fA-F]\{6\}/background #000000/g' ~/.config/kitty/kitty.conf && kitty @ set-colors --reload
# sed -i '/#custom-arch {/,/}/s/color: #[0-9a-fA-F]\{6\};/color: #ffffff;/g' ~/.config/waybar/style.css
sed -i '/#workspaces button {/,/}/s/color: #[0-9a-fA-F]\{6\};/color: #ffffff;/g' ~/.config/waybar/style.css
sed -i 's/border: 2px solid #[0-9a-fA-F]\{6\};/border: 2px solid #ffffff;/g' /home/ihti/.config/waybar/style.css && waybar-msg cmd restart
sed -i "s|background-image: url('/home/ihti/.Обои/[^']*')|background-image: url('/home/ihti/.Обои/wallpaper8.jpg')|g" ~/.config/wofi/style.css
pkill swaybg
swaybg -i /home/ihti/.Обои/wallpaper8.jpg