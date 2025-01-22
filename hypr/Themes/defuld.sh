#------------------------------------------Hyprland------------------------------------------------------------------#

sed -i 's/gaps_out = [0-80]\+/gaps_out = 8/g' ~/.config/hypr/hyprland.conf
sed -i 's/gaps_in = [0-80]\+/gaps_in = 6/g' ~/.config/hypr/hyprland.conf
sed -i 's/col.active_border = rgba([0-9A-F]\{8\})/col.active_border = rgba(FFFFFFFF)/g' ~/.config/hypr/hyprland.conf 
sed -i 's/col.inactive_border = rgba([0-9A-F]\{8\})/col.inactive_border = rgba(FFFFFF80)/g' ~/.config/hypr/hyprland.conf
hyprctl reload

#--------------------------------------------------------------------------------------------------------------------#


#------------------------------------------Fish------------------------------------------------------------------#

sed -i "s/set -U fish_color_cwd '[#0-9a-fA-F]*'/set -U fish_color_cwd '#4379FF'/g" ~/.config/fish/config.fish 
sed -i "s/set -U fish_color_user '[#0-9a-fA-F]*'/set -U fish_color_user '#4379FF'/g" ~/.config/fish/config.fish
sed -i "s/set -U fish_color_command '[#0-9a-fA-F]*'/set -U fish_color_command '#4379FF'/g" ~/.config/fish/config.fish

#--------------------------------------------------------------------------------------------------------------------#


sed -i 's/background #[0-9a-fA-F]\{6\}/background #000000/g' ~/.config/kitty/kitty.conf && kitty @ set-colors --reload


#------------------------------------------Waybar------------------------------------------------------------------#

# sed -i '/#custom-arch {/,/}/s/color: #[0-9a-fA-F]\{6\};/color: #ffffff;/g' ~/.config/waybar/style.css
sed -i 's/"margin-left": [0-90]\+,/"margin-left": 8,/g' ~/.config/waybar/config.jsonc
sed -i 's/"margin-right": [0-90]\+,/"margin-right": 8,/g' ~/.config/waybar/config.jsonc
sed -i 's/"margin-top": [0-90]\+,/"margin-top": 4,/g' ~/.config/waybar/config.jsonc
sed -i '/#workspaces button {/,/}/s/color: #[0-9a-fA-F]\{6\};/color: #ffffff;/g' ~/.config/waybar/style.css
sed -i 's/border: 2px solid #[0-9a-fA-F]\{6\};/border: 2px solid #ffffff;/g' /home/ihti/.config/waybar/style.css
pkill waybar
waybar &

#--------------------------------------------------------------------------------------------------------------------#


#------------------------------------------Wofi------------------------------------------------------------------#

sed -i "s|background-image: url('/home/ihti/.Обои/[^']*')|background-image: url('/home/ihti/.Обои/defuldtheme.jpg')|g" ~/.config/wofi/style.css
sed -i 's/border: 2px solid #[0-9a-fA-F]\{6\};/border: 2px solid #FFFFFF;/g' ~/.config/wofi/style.css
sed -i 's/box-shadow: inset 0 0 14px rgba([0-9]\{1,3\}, [0-9]\{1,3\}, [0-9]\{1,3\}, [0-9]\{1,3\}\.[0-9]\{1,3\});/box-shadow: inset 0 0 14px rgba(255, 255, 255, 0.6);/g' ~/.config/wofi/style.css
pkill wofi

#--------------------------------------------------------------------------------------------------------------------#


#------------------------------------------Swaybg------------------------------------------------------------------#

pkill swaybg
swaybg -i /home/ihti/.Обои/defuldtheme.jpg 
#--------------------------------------------------------------------------------------------------------------------#

# exec fish