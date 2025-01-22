#------------------------------------------Hyprland------------------------------------------------------------------#

sed -i 's/gaps_out = [0-80]\+/gaps_out = 20/g' ~/.config/hypr/hyprland.conf
sed -i 's/gaps_in = [0-80]\+/gaps_in = 10/g' ~/.config/hypr/hyprland.conf
sed -i 's/col.active_border = rgba([0-9A-F]\{8\})/col.active_border = rgba(FBAE23FF)/g' ~/.config/hypr/hyprland.conf
sed -i 's/col.inactive_border = rgba([0-9A-F]\{8\})/col.inactive_border = rgba(FBAE2380)/g' ~/.config/hypr/hyprland.conf
hyprctl reload

#--------------------------------------------------------------------------------------------------------------------#


#------------------------------------------Fish------------------------------------------------------------------#

sed -i "s/set -U fish_color_cwd '[#0-9a-fA-F]*'/set -U fish_color_cwd '#FFE34D'/g" ~/.config/fish/config.fish 
sed -i "s/set -U fish_color_user '[#0-9a-fA-F]*'/set -U fish_color_user '#FFE34D'/g" ~/.config/fish/config.fish
sed -i "s/set -U fish_color_command '[#0-9a-fA-F]*'/set -U fish_color_command '#FFE34D'/g" ~/.config/fish/config.fish

#--------------------------------------------------------------------------------------------------------------------#


sed -i 's/background #[0-9a-fA-F]\{6\}/background #140d00/g' ~/.config/kitty/kitty.conf && kitty @ set-colors --reload


#------------------------------------------Waybar------------------------------------------------------------------#

# sed -i '/#custom-arch {/,/}/s/color: #[0-9a-fA-F]\{6\};/color: #FBB532;/g' ~/.config/waybar/style.css
sed -i 's/"margin-left": [0-90]\+,/"margin-left": 20,/g' ~/.config/waybar/config.jsonc
sed -i 's/"margin-right": [0-90]\+,/"margin-right": 20,/g' ~/.config/waybar/config.jsonc
sed -i 's/"margin-top": [0-90]\+,/"margin-top": 14,/g' ~/.config/waybar/config.jsonc
sed -i '/#workspaces button {/,/}/s/color: #[0-9a-fA-F]\{6\};/color: #FBB532;/g' ~/.config/waybar/style.css
sed -i 's/border: 2px solid #[0-9a-fA-F]\{6\};/border: 2px solid #FBB532;/g' /home/ihti/.config/waybar/style.css
pkill waybar
waybar &

#--------------------------------------------------------------------------------------------------------------------#

#------------------------------------------Wofi------------------------------------------------------------------#

sed -i "s|background-image: url('/home/ihti/.Обои/[^']*')|background-image: url('/home/ihti/.Обои/wallpaperr7.jpg')|g" ~/.config/wofi/style.css
sed -i 's/border: 2px solid #[0-9a-fA-F]\{6\};/border: 2px solid #FBAE23;/g' ~/.config/wofi/style.css
sed -i 's/box-shadow: inset 0 0 14px rgba([0-9]\{1,3\}, [0-9]\{1,3\}, [0-9]\{1,3\}, [0-9]\{1,3\}\.[0-9]\{1,3\});/box-shadow: inset 0 0 14px rgba(251, 174, 35, 0.6);/g' ~/.config/wofi/style.css
pkill wofi

#--------------------------------------------------------------------------------------------------------------------#


#------------------------------------------Swaybg------------------------------------------------------------------#

pkill swaybg
swaybg -i /home/ihti/.Обои/wallpaperr7.jpg
#--------------------------------------------------------------------------------------------------------------------#

# exec fish