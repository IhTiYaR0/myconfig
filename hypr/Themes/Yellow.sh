#------------------------------------------Swww------------------------------------------------------------------#
swww img --resize crop --transition-type grow --transition-step 40 --transition-fps 60 --transition-pos top-right ~/.Wallpapers/wallpaperr7.jpg
#--------------------------------------------------------------------------------------------------------------------#
#------------------------------------------Hyprland------------------------------------------------------------------#
sed -i 's/gaps_out = [0-80]\+/gaps_out = 20/g' ~/.config/hypr/hyprland.conf
sed -i 's/gaps_in = [0-80]\+/gaps_in = 8/g' ~/.config/hypr/hyprland.conf
sed -i 's/rounding = [0-9]\+/rounding = 6/g' ~/.config/hypr/hyprland.conf
sed -i 's/size = [0-999]\+/size = 2/g' ~/.config/hypr/hyprland.conf
sed -i 's/passes = [0-999]\+/passes = 5/g' ~/.config/hypr/hyprland.conf
sed -i 's/col.active_border = rgba([0-9A-F]\{8\})/col.active_border = rgba(FBAE23FF)/g' ~/.config/hypr/hyprland.conf
sed -i 's/col.inactive_border = rgba([0-9A-F]\{8\})/col.inactive_border = rgba(FBAE2380)/g' ~/.config/hypr/hyprland.conf
sed -i 's/border_size = [0-80]\+/border_size = 2/g' ~/.config/hypr/hyprland.conf
hyprctl reload
#--------------------------------------------------------------------------------------------------------------------#
#------------------------------------------Fish------------------------------------------------------------------#
# sed -i "s/set -U fish_color_cwd '[#0-9a-fA-F]*'/set -U fish_color_cwd '#FFE34D'/g" ~/.config/fish/config.fish 
# sed -i "s/set -U fish_color_user '[#0-9a-fA-F]*'/set -U fish_color_user '#FFE34D'/g" ~/.config/fish/config.fish
sed -i "s/set -U fish_color_command '[#0-9a-fA-F]*'/set -U fish_color_command '#FFE34D'/g" ~/.config/fish/config.fish
sed -i 's/set_color "#[a-fA-F0-9]\{6\}"/set_color "#FBAE23"/g' ~/.config/fish/config.fish
#--------------------------------------------------------------------------------------------------------------------#
sed -i 's/background #[0-9a-fA-F]\{6\}/background #140d00/g' ~/.config/kitty/kitty.conf && kitty @ set-colors --reload
sed -i 's/background_opacity 0\.[0-9]/background_opacity 0.6/' ~/.config/kitty/kitty.conf && kitty @ set-colors --reload
#------------------------------------------Waybar------------------------------------------------------------------#
# sed -i '/#custom-arch {/,/}/s/color: #[0-9a-fA-F]\{6\};/color: #FBB532;/g' ~/.config/waybar/style.css
sed -i '/window#waybar {/,/}/ s/background: rgba([0-9]\{1,3\}, [0-9]\{1,3\}, [0-9]\{1,3\}, [0-9]\{1,3\}\.[0-9]\{1,3\});/background: rgba(0, 0, 0, 0.6);/' ~/.config/waybar/style.css
sed -i '/window#waybar {/,/}/ s/border-radius: [0-9]\+px;/border-radius: 6px;/' ~/.config/waybar/style.css
sed -i 's/"margin-left": [0-90]\+,/"margin-left": 20,/g' ~/.config/waybar/config.jsonc
sed -i 's/"margin-right": [0-90]\+,/"margin-right": 20,/g' ~/.config/waybar/config.jsonc
sed -i 's/"margin-top": [0-9]\+,/"margin-top": 14,/g' ~/.config/waybar/config.jsonc
sed -i 's/"margin-bottom": -[0-9]\+,/"margin-bottom": -2,/g' ~/.config/waybar/config.jsonc
sed -i '/window#waybar {/,/}/ s/border: [0-9]\+px solid #[0-9a-fA-F]\{6\};/border: 2px solid #FBB532;/' ~/.config/waybar/style.css
sed -i '/#workspaces button {/,/}/s/color: #[0-9a-fA-F]\{6\};/color: #FBB532;/g' ~/.config/waybar/style.css
pkill waybar
waybar &
#--------------------------------------------------------------------------------------------------------------------#
#------------------------------------------CAVA------------------------------------------------------------------#
sed -i "s/gradient_color_1 = '#[a-fA-F0-9]\{6\}'/gradient_color_1 = '#FBAE23'/g" ~/.config/cava/config
sed -i "s/gradient_color_2 = '#[a-fA-F0-9]\{6\}'/gradient_color_2 = '#F99F1F'/g" ~/.config/cava/config
sed -i "s/gradient_color_3 = '#[a-fA-F0-9]\{6\}'/gradient_color_3 = '#F88F1B'/g" ~/.config/cava/config
sed -i "s/gradient_color_4 = '#[a-fA-F0-9]\{6\}'/gradient_color_4 = '#F78017'/g" ~/.config/cava/config
sed -i "s/gradient_color_5 = '#[a-fA-F0-9]\{6\}'/gradient_color_5 = '#F67013'/g" ~/.config/cava/config
sed -i "s/gradient_color_6 = '#[a-fA-F0-9]\{6\}'/gradient_color_6 = '#F5600F'/g" ~/.config/cava/config
sed -i "s/gradient_color_7 = '#[a-fA-F0-9]\{6\}'/gradient_color_7 = '#F4500B'/g" ~/.config/cava/config
sed -i "s/gradient_color_8 = '#[a-fA-F0-9]\{6\}'/gradient_color_8 = '#F34007'/g" ~/.config/cava/config
sed -i "s/gradient_color_9 = '#[a-fA-F0-9]\{6\}'/gradient_color_9 = '#F23003'/g" ~/.config/cava/config
sed -i "s/gradient_color_10 = '#[a-fA-F0-9]\{6\}'/gradient_color_10 = '#F12000'/g" ~/.config/cava/config
pkill -USR1 cava
#--------------------------------------------------------------------------------------------------------------------#
#------------------------------------------GTK_3------------------------------------------------------------------#
gsettings set org.gnome.desktop.interface icon-theme "Fluent-orange"
#--------------------------------------------------------------------------------------------------------------------#
#------------------------------------------Wofi------------------------------------------------------------------#
# sed -i "s|background-image: url('$(echo ~)/.Wallpapers/[^']*')|background-image: url('$(echo ~)/.Wallpapers/wallpaperr7.jpg')|g" ~/.config/wofi/style.css
sed -i 's/border: 2px solid #[0-9a-fA-F]\{6\};/border: 2px solid #FBAE23;/g' ~/.config/wofi/style.css
sed -i 's/box-shadow: inset 0 0 14px rgba([0-9]\{1,3\}, [0-9]\{1,3\}, [0-9]\{1,3\}, [0-9]\{1,3\}\.[0-9]\{1,3\});/box-shadow: inset 0 0 14px rgba(251, 174, 35, 0.6);/g' ~/.config/wofi/style.css
pkill wofi
#--------------------------------------------------------------------------------------------------------------------#
