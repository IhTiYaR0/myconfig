if status is-interactive
    # Commands to run in interactive sessions can go here
    function fish_greeting; end

#-----------------------------------------------------------#
#---------------------Команды для GitHub--------------------#
#-----------------------------------------------------------#


#------------------Для сохранении Репазитоии----------------#
    function up
        git push origin main
	    echo "Ваш-GitHub-Обновлен!"
    end
#-----------------------------------------------------------#

#----------------------------Hypr---------------------------#
    function uphypr
        cd
        rm -rf /home/ihti/MyGitHub/MyConfigGitHub/myconfig/hypr
        cd .config
        cp -r hypr ~/MyGitHub/MyConfigGitHub/myconfig/
        cd /home/ihti/MyGitHub/MyConfigGitHub/myconfig/
        git add hypr
        clear
        echo "Ваш-Hypr-Обновился!"
    end
#-----------------------------------------------------------#

#----------------------------Fish---------------------------#
    function upfish
        cd
        rm -rf /home/ihti/MyGitHub/MyConfigGitHub/myconfig/fish
        cd .config
        cp -r fish ~/MyGitHub/MyConfigGitHub/myconfig/
        cd /home/ihti/MyGitHub/MyConfigGitHub/myconfig/
        git add fish
        clear
        echo "Ваш-Fish-Обновился!"
    end
#-----------------------------------------------------------#

#----------------------------Kitty--------------------------#
    function upkitty
        cd
        rm -rf /home/ihti/MyGitHub/MyConfigGitHub/myconfig/kitty
        cd .config
        cp -r kitty ~/MyGitHub/MyConfigGitHub/myconfig/
        cd /home/ihti/MyGitHub/MyConfigGitHub/myconfig/
        git add kitty
        clear
        echo "Ваш-Kitty-Обновился!"
    end
#-----------------------------------------------------------#

#----------------------------Waybar-------------------------#
    function upwaybar
        cd
        rm -rf /home/ihti/MyGitHub/MyConfigGitHub/myconfig/waybar
        cd .config
        cp -r waybar ~/MyGitHub/MyConfigGitHub/myconfig/
        cd /home/ihti/MyGitHub/MyConfigGitHub/myconfig/
        git add waybar
        clear
        echo "Ваш-Waybar-Обновился!"
    end
#-----------------------------------------------------------#

#----------------------------Wofi---------------------------#
    function upwofi
        cd
        rm -rf /home/ihti/MyGitHub/MyConfigGitHub/myconfig/wofi
        cd .config
        cp -r wofi ~/MyGitHub/MyConfigGitHub/myconfig/
        cd /home/ihti/MyGitHub/MyConfigGitHub/myconfig/
        git add wofi
        clear
        echo "Ваш-Wofi-Обновился!"
    end
#-----------------------------------------------------------#



    function upobsidian
        cd
        cd MyObsidian/
        clear
        echo "Вы на месте!"
        git add .
    end


#-----------------------------------------------------------#
#-----------------------------------------------------------#
#-----------------------------------------------------------#

#-----------------------YAY-Install-------------------------#
    function yay-install-archlinux
	cd 
	git clone https://aur.archlinux.org/yay.git
	cd yay
	makepkg -si
	cd
	rm -rf yay
    end
#-----------------------------------------------------------#


#--------------------------VS-Code--------------------------#
    function code-github
	    code ~/MyGitHub/MyConfigGitHub/myconfig/
            exec kill -100 $PPID
    end
#-----------------------------------------------------------#





end
