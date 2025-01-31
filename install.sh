echo -n "Подготовка: "
for i in (seq 5 -1 1)
    echo -n "..$i"
    sleep 0.8
end
echo -n "Старт!---------------------------------------------------------------------------------------------"
figlet -f slant "S t a r t ?" | lolcat | sed 's/^/\x1b[32m/' | sed 's/$/\x1b[0m/'

sudo -v


figlet -f slant "Installing packages!" | lolcat | sed 's/^/\x1b[32m/' | sed 's/$/\x1b[0m/' 
for i in (seq 5 -1 1)
    echo -n "..$i"
    sleep 0.7
end
cd
rm -rf mypython
git clone https://github.com/IhTiYaR0/mypython
python ~/mypython/main.py
rm -rf mypython


for i in (seq 5 -1 1)
    echo -n "..$i"
    sleep 0.7
end
cd
git clone https://github.com/IhTiYaR0/myconfig
cd ~/myconfig
sudo rm -rf ~/.config/hypr
cp -r hypr ~/.config/
sudo rm -rf ~/.config/fish
cp -r fish ~/.config/
sudo rm -rf ~/.config/kitty
cp -r kitty ~/.config/
sudo rm -rf ~/.config/waybar
cp -r waybar ~/.config/
sudo rm -rf ~/.config/wofi
cp -r wofi ~/.config/
rm -rf ~/myconfig


figlet -f slant "Install GTK-themes" | lolcat | sed 's/^/\x1b[32m/' | sed 's/$/\x1b[0m/'
for i in (seq 5 -1 1)
    echo -n "..$i"
    sleep 0.7
end
cd
git clone https://github.com/IhTiYaR0/gtkthemes.git
cd ~/gtkthemes
sudo rm -rf ~/.config/gtk-3.0/gtk.css
sudo mv gtk.css ~/.config/gtk-3.0/gtk.css
sudo rm -rf /usr/share/themes/Breeze-Gently
sudo mv Breeze-Gently /usr/share/themes/
sudo rm -rf /usr/share/themes/Cool-Dark-Icons
sudo mv Cool-Dark-Icons /usr/share/icons/
sudo rm -rf /usr/share/themes/Fluent-orange
sudo mv Fluent-orange /usr/share/icons/
sudo rm -rf /usr/share/themes/Uos-fulldistro-icons-Dark
sudo mv Uos-fulldistro-icons-Dark /usr/share/icons/
sudo mv gtk.css ~/.config/gtk-3.0/
rm -rf ~/gtkthemes

figlet -f slant "Install Wallpaper" | lolcat | sed 's/^/\x1b[32m/' | sed 's/$/\x1b[0m/'
for i in (seq 5 -1 1)
    echo -n "..$i"
    sleep 0.7
end
cd
rm -rf ~/wallpapers
rm -rf ~/.Wallpapers
git clone https://github.com/IhTiYaR0/wallpapers
cd
mv wallpapers .Wallpapers
cd

figlet -f slant "Finish" | lolcat | sed 's/^/\x1b[32m/' | sed 's/$/\x1b[0m/'
