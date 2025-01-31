echo -n "Подготовка: "
for i in (seq 5 -1 1)
    echo -n "..$i"
    sleep 0.8
end
echo -n "Старт!---------------------------------------------------------------------------------------------"
figlet -f slant "S t a r t ?" | lolcat | sed 's/^/\x1b[32m/' | sed 's/$/\x1b[0m/'

sudo -v

echo "Installing packages"
for i in (seq 5 -1 1)
    echo -n "..$i"
    sleep 0.7
end

echo "Installing yay"

cd $HOME
git clone https://aur.archlinux.org/yay.git
cd ~/yay
makepkg -si
cd $HOME
rm -rf yay

cd $HOME
rm -rf mypython
git clone https://github.com/IhTiYaR0/mypython
python ~/mypython/main.py
rm -rf mypython
cd $HOME
yay -S cava


echo "Cloning a Config"
for i in (seq 5 -1 1)
    echo -n "..$i"
    sleep 0.7
end
cd $HOME
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
sudo rm -rf ~/.config/cava
cp -r cava ~/.config/

echo "Install GTK-themes"
for i in (seq 5 -1 1)
    echo -n "..$i"
    sleep 0.7
end
cd $HOME
# 1 theme
git clone https://github.com/L4ki/Breeze-Gently.git
sudo mv Breeze-Gently /usr/share/themes/
# 2 theme
cd $HOME
git clone https://github.com/L4ki/Cool-Plasma-Themes.git
cd ~/Cool-Plasma-Themes/Cool\ Icons\ Themes/
sudo mv Cool-Dark-Icons /usr/share/icons/
# 3 theme
cd $HOME
git clone https://github.com/IhTiYaR0/gtkthemes.git
cd ~/gtkthemes
sudo mv Fluent-orange /usr/share/icons/
sudo mv Uos-fulldistro-icons-Dark /usr/share/icons/
sudo mv Windows11-blue /usr/share/icons/
sudo mv Future-dark-cursors /usr/share/icons/
cd $HOME
sudo mkdir ~/.config/gtk-3.0
sudo mv settings.ini ~/.config/gtk-3.0/
sudo mv gtk.css ~/.config/gtk-3.0/
rm -rf ~/gtkthemes

echo "Install Wallpaper"
for i in (seq 5 -1 1)
    echo -n "..$i"
    sleep 0.7
end
cd $HOME
rm -rf ~/wallpapers
rm -rf ~/.Wallpapers
git clone https://github.com/IhTiYaR0/wallpapers
cd $HOME
mv wallpapers .Wallpapers
cd $HOME
echo "Finish"
