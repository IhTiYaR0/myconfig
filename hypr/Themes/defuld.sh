 #------------------------------------------Hyprland------------------------------------------------------------------#
sed -i 's/gaps_out = [0-80]\+/gaps_out = 8/g' ~/.config/hypr/hyprland.conf
sed -i 's/gaps_in = [0-80]\+/gaps_in = 6/g' ~/.config/hypr/hyprland.conf
sed -i 's/rounding = [0-9]\+/rounding = 6/g' ~/.config/hypr/hyprland.conf
sed -i 's/size = [0-9]\+/size = 2/g' ~/.config/hypr/hyprland.conf
sed -i 's/passes = [0-9]\+/passes = 5/g' ~/.config/hypr/hyprland.conf
sed -i 's/col.active_border = rgba([0-9A-F]\{8\})/col.active_border = rgba(FFFFFFFF)/g' ~/.config/hypr/hyprland.conf 
sed -i 's/col.inactive_border = rgba([0-9A-F]\{8\})/col.inactive_border = rgba(FFFFFF80)/g' ~/.config/hypr/hyprland.conf
sed -i 's/border_size = [0-80]\+/border_size = 2/g' ~/.config/hypr/hyprland.conf
hyprctl reload
#--------------------------------------------------------------------------------------------------------------------#
#------------------------------------------Fish------------------------------------------------------------------#
# sed -i "s/set -U fish_color_cwd '[#0-9a-fA-F]*'/set -U fish_color_cwd '#FFFFFF'/g" ~/.config/fish/config.fish 
# sed -i "s/set -U fish_color_user '[#0-9a-fA-F]*'/set -U fish_color_user '#68f26d'/g" ~/.config/fish/config.fish
sed -i "s/set -U fish_color_command '[#0-9a-fA-F]*'/set -U fish_color_command '#68f26d'/g" ~/.config/fish/config.fish
sed -i 's/set_color "#[a-fA-F0-9]\{6\}"/set_color "#38D100"/g' ~/.config/fish/config.fish
#--------------------------------------------------------------------------------------------------------------------#
sed -i 's/background #[0-9a-fA-F]\{6\}/background #000000/g' ~/.config/kitty/kitty.conf && kitty @ set-colors --reload
sed -i 's/background_opacity 0\.[0-9]/background_opacity 0.6/' ~/.config/kitty/kitty.conf && kitty @ set-colors --reload

sed -i 's/"workbench.colorTheme": "[^"]*"/"workbench.colorTheme": "Ayu Dark"/g' ~/.config/Code/User/settings.json
sed -i 's/"workbench.iconTheme": "[^"]*"/"workbench.iconTheme": "simple-icons"/g' ~/.config/Code/User/settings.json
#------------------------------------------Waybar------------------------------------------------------------------#
# sed -i '/#custom-arch {/,/}/s/color: #[0-9a-fA-F]\{6\};/color: #ffffff;/g' ~/.config/waybar/style.css
sed -i '/window#waybar {/,/}/ s/background: rgba([0-9]\{1,3\}, [0-9]\{1,3\}, [0-9]\{1,3\}, [0-9]\{1,3\}\.[0-9]\{1,3\});/background: rgba(0, 0, 0, 0.6);/' ~/.config/waybar/style.css
sed -i '/window#waybar {/,/}/ s/border-radius: [0-9]\+px;/border-radius: 6px;/' ~/.config/waybar/style.css
sed -i 's/"margin-left": [0-90]\+,/"margin-left": 8,/g' ~/.config/waybar/config.jsonc
sed -i 's/"margin-right": [0-90]\+,/"margin-right": 8,/g' ~/.config/waybar/config.jsonc
sed -i 's/"margin-top": [0-90]\+,/"margin-top": 4,/g' ~/.config/waybar/config.jsonc
sed -i 's/"margin-bottom": -[0-9]\+,/"margin-bottom": -2,/g' ~/.config/waybar/config.jsonc
sed -i '/window#waybar {/,/}/ s/border: [0-9]\+px solid #[0-9a-fA-F]\{6\};/border: 2px solid #FFFFFF;/' ~/.config/waybar/style.css
sed -i '/#workspaces button {/,/}/s/color: #[0-9a-fA-F]\{6\};/color: #FFFFFF;/g' ~/.config/waybar/style.css
pkill waybar
waybar &
#--------------------------------------------------------------------------------------------------------------------#
#------------------------------------------GTK_3------------------------------------------------------------------#
gsettings set org.gnome.desktop.interface icon-theme "Uos-fulldistro-icons-Dark"
# gsettings set org.gnome.desktop.interface gtk-theme "YourThemeName"
# sed -i '/gtk-theme-name=.*\;/gtk-theme-name=Otis/' ~/.config/gtk-3.0/settings.ini
# sed -i 's/^gtk-theme-name=.*/gtk-theme-name=Otis/' /home/ihti/.config/gtk-3.0/setting.ini
#--------------------------------------------------------------------------------------------------------------------#
#------------------------------------------Wofi------------------------------------------------------------------#
sed -i "s|background-image: url('$(echo ~)/.Wallpapers/[^']*')|background-image: url('$(echo ~)/.Wallpapers/wallpaperr4.png')|g" ~/.config/wofi/style.css
sed -i 's/border: 2px solid #[0-9a-fA-F]\{6\};/border: 2px solid #FFFFFF;/g' ~/.config/wofi/style.css
sed -i 's/box-shadow: inset 0 0 14px rgba([0-9]\{1,3\}, [0-9]\{1,3\}, [0-9]\{1,3\}, [0-9]\{1,3\}\.[0-9]\{1,3\});/box-shadow: inset 0 0 14px rgba(255, 255, 255, 0.6);/g' ~/.config/wofi/style.css
pkill wofi
#--------------------------------------------------------------------------------------------------------------------#
#------------------------------------------Swaybg------------------------------------------------------------------#
pkill swaybg
swaybg -i ~/.Wallpapers/wallpaperr4.png 
#--------------------------------------------------------------------------------------------------------------------#

