#------------------------------------------Swww------------------------------------------------------------------#
swww img --resize crop --transition-type grow --transition-step 40 --transition-fps 60 --transition-pos top-right ~/.Wallpapers/blue.jpg
#--------------------------------------------------------------------------------------------------------------------#
#------------------------------------------Hyprland------------------------------------------------------------------#
sed -i 's/gaps_out = [0-80]\+/gaps_out = 22/g' ~/.config/hypr/hyprland.conf
sed -i 's/gaps_in = [0-80]\+/gaps_in = 10/g' ~/.config/hypr/hyprland.conf
sed -i 's/rounding = [0-9]\+/rounding = 8/g' ~/.config/hypr/hyprland.conf
sed -i 's/size = [0-999]\+/size = 2/g' ~/.config/hypr/hyprland.conf
sed -i 's/passes = [0-999]\+/passes = 3/g' ~/.config/hypr/hyprland.conf
sed -i 's/col.active_border = rgba([0-9A-F]\{8\})/col.active_border = rgba(14E0F8FF)/g' ~/.config/hypr/hyprland.conf
sed -i 's/col.inactive_border = rgba([0-9A-F]\{8\})/col.inactive_border = rgba(001C1F80)/g' ~/.config/hypr/hyprland.conf
sed -i 's/border_size = [0-80]\+/border_size = 3/g' ~/.config/hypr/hyprland.conf
hyprctl reload
#--------------------------------------------------------------------------------------------------------------------#
#------------------------------------------Fish------------------------------------------------------------------#
# sed -i "s/set -U fish_color_cwd '[#0-9a-fA-F]*'/set -U fish_color_cwd '#1AE8FF'/g" ~/.config/fish/config.fish 
# sed -i "s/set -U fish_color_user '[#0-9a-fA-F]*'/set -U fish_color_user '#1AE8FF'/g" ~/.config/fish/config.fish
sed -i "s/set -U fish_color_command '[#0-9a-fA-F]*'/set -U fish_color_command '#1AE8FF'/g" ~/.config/fish/config.fish
sed -i 's/set_color "#[a-fA-F0-9]\{6\}"/set_color "#14E0F8"/g' ~/.config/fish/config.fish
#--------------------------------------------------------------------------------------------------------------------#
sed -i 's/background #[0-9a-fA-F]\{6\}/background #000212/g' ~/.config/kitty/kitty.conf 
sed -i 's/background_opacity 0\.[0-9]/background_opacity 0.5/' ~/.config/kitty/kitty.conf && kitty @ set-colors --reload
#------------------------------------------Waybar------------------------------------------------------------------#
# sed -i '/#custom-arch {/,/}/s/color: #[0-9a-fA-F]\{6\};/color: #FBB532;/g' ~/.config/waybar/style.css
sed -i '/window#waybar {/,/}/ s/background: rgba([0-9]\{1,3\}, [0-9]\{1,3\}, [0-9]\{1,3\}, [0-9]\{1,3\}\.[0-9]\{1,3\});/background: rgba(0, 28, 31, 0.4);/' ~/.config/waybar/style.css
sed -i '/window#waybar {/,/}/ s/border-radius: [0-9]\+px;/border-radius: 8px;/' ~/.config/waybar/style.css
sed -i 's/"margin-left": [0-90]\+,/"margin-left": 22,/g' ~/.config/waybar/config.jsonc
sed -i 's/"margin-right": [0-90]\+,/"margin-right": 22,/g' ~/.config/waybar/config.jsonc
sed -i 's/"margin-top": [0-90]\+,/"margin-top": 7,/g' ~/.config/waybar/config.jsonc
sed -i 's/"margin-bottom": -[0-9]\+,/"margin-bottom": -6,/g' ~/.config/waybar/config.jsonc
sed -i '/window#waybar {/,/}/ s/border: [0-9]\+px solid #[0-9a-fA-F]\{6\};/border: 3px solid #14E0F8;/' ~/.config/waybar/style.css
sed -i '/#workspaces button {/,/}/s/color: #[0-9a-fA-F]\{6\};/color: #14E0F8;/g' ~/.config/waybar/style.css
pkill waybar
waybar &
#--------------------------------------------------------------------------------------------------------------------#
#------------------------------------------CAVA------------------------------------------------------------------#
sed -i "s/gradient_color_1 = '#[a-fA-F0-9]\{6\}'/gradient_color_1 = '#14B0C8'/g" ~/.config/cava/config
sed -i "s/gradient_color_2 = '#[a-fA-F0-9]\{6\}'/gradient_color_2 = '#1F9DB8'/g" ~/.config/cava/config
sed -i "s/gradient_color_3 = '#[a-fA-F0-9]\{6\}'/gradient_color_3 = '#2A8AA8'/g" ~/.config/cava/config
sed -i "s/gradient_color_4 = '#[a-fA-F0-9]\{6\}'/gradient_color_4 = '#35779A'/g" ~/.config/cava/config
sed -i "s/gradient_color_5 = '#[a-fA-F0-9]\{6\}'/gradient_color_5 = '#41668A'/g" ~/.config/cava/config
sed -i "s/gradient_color_6 = '#[a-fA-F0-9]\{6\}'/gradient_color_6 = '#4C5680'/g" ~/.config/cava/config
sed -i "s/gradient_color_7 = '#[a-fA-F0-9]\{6\}'/gradient_color_7 = '#58506F'/g" ~/.config/cava/config
sed -i "s/gradient_color_8 = '#[a-fA-F0-9]\{6\}'/gradient_color_8 = '#635A5E'/g" ~/.config/cava/config
sed -i "s/gradient_color_9 = '#[a-fA-F0-9]\{6\}'/gradient_color_9 = '#6F6455'/g" ~/.config/cava/config
sed -i "s/gradient_color_10 = '#[a-fA-F0-9]\{6\}'/gradient_color_10 = '#7A6F4D'/g" ~/.config/cava/config
pkill -USR1 cava
#--------------------------------------------------------------------------------------------------------------------#
#------------------------------------------GTK_3------------------------------------------------------------------#
gsettings set org.gnome.desktop.interface icon-theme "Cool-Dark-Icons"
#--------------------------------------------------------------------------------------------------------------------#
#------------------------------------------Wofi------------------------------------------------------------------#
# sed -i "s|background-image: url('$(echo ~)/.Wallpapers/[^']*')|background-image: url('$(echo ~)/.Wallpapers/blue.jpg')|g" ~/.config/wofi/style.css
sed -i 's/border: 2px solid #[0-9a-fA-F]\{6\};/border: 2px solid #14E0F8;/g' ~/.config/wofi/style.css
sed -i 's/box-shadow: inset 0 0 14px rgba([0-9]\{1,3\}, [0-9]\{1,3\}, [0-9]\{1,3\}, [0-9]\{1,3\}\.[0-9]\{1,3\});/box-shadow: inset 0 0 14px rgba(0, 165, 184, 0.6);/g' ~/.config/wofi/style.css
pkill wofi
#--------------------------------------------------------------------------------------------------------------------#

