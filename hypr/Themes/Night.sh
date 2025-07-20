#------------------------------------------Swww------------------------------------------------------------------#
swww img --resize crop --transition-type grow --transition-step 40 --transition-fps 60 --transition-pos top-right ~/.Wallpapers/Night.jpg
#--------------------------------------------------------------------------------------------------------------------#
#------------------------------------------Hyprland------------------------------------------------------------------#
sed -i 's/gaps_out = [0-80]\+/gaps_out = 30/g' ~/.config/hypr/hyprland.conf
sed -i 's/gaps_in = [0-80]\+/gaps_in = 12/g' ~/.config/hypr/hyprland.conf
sed -i 's/rounding = [0-9]\+/rounding = 4/g' ~/.config/hypr/hyprland.conf
sed -i 's/size = [0-999]\+/size = 200/g' ~/.config/hypr/hyprland.conf
sed -i 's/passes = [0-999]\+/passes = 10/g' ~/.config/hypr/hyprland.conf
sed -i 's/col.active_border = rgba([0-9A-F]\{8\})/col.active_border = rgba(0E5788FF)/g' ~/.config/hypr/hyprland.conf
sed -i 's/col.inactive_border = rgba([0-9A-F]\{8\})/col.inactive_border = rgba(00090F80)/g' ~/.config/hypr/hyprland.conf
sed -i 's/border_size = [0-80]\+/border_size = 4/g' ~/.config/hypr/hyprland.conf
hyprctl reload
#--------------------------------------------------------------------------------------------------------------------#
#------------------------------------------Fish------------------------------------------------------------------#
# sed -i "s/set -U fish_color_cwd '[#0-9a-fA-F]*'/set -U fish_color_cwd '#FFE34D'/g" ~/.config/fish/config.fish 
# sed -i "s/set -U fish_color_user '[#0-9a-fA-F]*'/set -U fish_color_user '#FFE34D'/g" ~/.config/fish/config.fish
sed -i "s/set -U fish_color_command '[#0-9a-fA-F]*'/set -U fish_color_command '#28AAFF'/g" ~/.config/fish/config.fish
sed -i 's/set_color "#[a-fA-F0-9]\{6\}"/set_color "#149DF8"/g' ~/.config/fish/config.fish
#--------------------------------------------------------------------------------------------------------------------#
sed -i 's/background #[0-9a-fA-F]\{6\}/background #00111B/g' ~/.config/kitty/kitty.conf && kitty @ set-colors --reload
sed -i 's/background_opacity 0\.[0-9]/background_opacity 0.9/' ~/.config/kitty/kitty.conf && kitty @ set-colors --reload
#------------------------------------------Waybar------------------------------------------------------------------#
# sed -i '/#custom-arch {/,/}/s/color: #[0-9a-fA-F]\{6\};/color: #FBB532;/g' ~/.config/waybar/style.css
sed -i '/window#waybar {/,/}/ s/background: rgba([0-9]\{1,3\}, [0-9]\{1,3\}, [0-9]\{1,3\}, [0-9]\{1,3\}\.[0-9]\{1,3\});/background: rgba(0, 17, 27, 1.0);/' ~/.config/waybar/style.css
sed -i '/window#waybar {/,/}/ s/border-radius: [0-9]\+px;/border-radius: 4px;/' ~/.config/waybar/style.css
sed -i 's/"margin-left": [0-90]\+,/"margin-left": 30,/g' ~/.config/waybar/config.jsonc
sed -i 's/"margin-right": [0-90]\+,/"margin-right": 30,/g' ~/.config/waybar/config.jsonc
sed -i 's/"margin-top": [0-9]\+,/"margin-top": 8,/g' ~/.config/waybar/config.jsonc
sed -i 's/"margin-bottom": -[0-9]\+,/"margin-bottom": -4,/g' ~/.config/waybar/config.jsonc
sed -i '/window#waybar {/,/}/ s/border: [0-9]\+px solid #[0-9a-fA-F]\{6\};/border: 3px solid #0E5788;/' ~/.config/waybar/style.css
sed -i '/#workspaces button {/,/}/s/color: #[0-9a-fA-F]\{6\};/color: #0E5788;/g' ~/.config/waybar/style.css
pkill waybar
waybar &
#--------------------------------------------------------------------------------------------------------------------#
#------------------------------------------CAVA------------------------------------------------------------------#
sed -i "s/gradient_color_1 = '#[a-fA-F0-9]\{6\}'/gradient_color_1 = '#0E5788'/g" ~/.config/cava/config
sed -i "s/gradient_color_2 = '#[a-fA-F0-9]\{6\}'/gradient_color_2 = '#1F6D91'/g" ~/.config/cava/config
sed -i "s/gradient_color_3 = '#[a-fA-F0-9]\{6\}'/gradient_color_3 = '#317BA0'/g" ~/.config/cava/config
sed -i "s/gradient_color_4 = '#[a-fA-F0-9]\{6\}'/gradient_color_4 = '#4A8EAE'/g" ~/.config/cava/config
sed -i "s/gradient_color_5 = '#[a-fA-F0-9]\{6\}'/gradient_color_5 = '#66A1BC'/g" ~/.config/cava/config
sed -i "s/gradient_color_6 = '#[a-fA-F0-9]\{6\}'/gradient_color_6 = '#80B4CA'/g" ~/.config/cava/config
sed -i "s/gradient_color_7 = '#[a-fA-F0-9]\{6\}'/gradient_color_7 = '#99C8D8'/g" ~/.config/cava/config
sed -i "s/gradient_color_8 = '#[a-fA-F0-9]\{6\}'/gradient_color_8 = '#B2D9E6'/g" ~/.config/cava/config
sed -i "s/gradient_color_9 = '#[a-fA-F0-9]\{6\}'/gradient_color_9 = '#CCEAF4'/g" ~/.config/cava/config
sed -i "s/gradient_color_10 = '#[a-fA-F0-9]\{6\}'/gradient_color_10 = '#E6F3FB'/g" ~/.config/cava/config
pkill -USR1 cava
#--------------------------------------------------------------------------------------------------------------------#
#------------------------------------------GTK_3------------------------------------------------------------------#
gsettings set org.gnome.desktop.interface icon-theme "Windows11-blue"
#--------------------------------------------------------------------------------------------------------------------#
#------------------------------------------Wofi------------------------------------------------------------------#
# sed -i "s|background-image: url('$(echo ~)/.Wallpapers/[^']*')|background-image: url('$(echo ~)/.Wallpapers/Night.jpg')|g" ~/.config/wofi/style.css
sed -i 's/border: 2px solid #[0-9a-fA-F]\{6\};/border: 2px solid #0E5788;/g' ~/.config/wofi/style.css
sed -i 's/box-shadow: inset 0 0 14px rgba([0-9]\{1,3\}, [0-9]\{1,3\}, [0-9]\{1,3\}, [0-9]\{1,3\}\.[0-9]\{1,3\});/box-shadow: inset 0 0 14px rgba(11, 69, 107, 0.6);/g' ~/.config/wofi/style.css
pkill wofi
#--------------------------------------------------------------------------------------------------------------------#
