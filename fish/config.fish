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



set -U fish_color_user '#68f26d' 
set -U fish_color_cwd '#68f26d' 
set -U fish_color_command '#68f26d' 


set -U fish_color_param green
set -U fish_color_normal green
#set -U fish_color_selection white --background='#50FA7B'
set -U fish_color_error '#FF5555'
set -U fish_color_host '#FFFFFF'
# set -U fish_color_autosuggestion brblack


# Основной стиль текста
# Основной стиль текста
# set -U fish_color_normal '#50FA7B'                    # Обычный текст (неоново-зеленый)
# set -U fish_color_command '#68f26d' --bold            # Команды (оранжевый, жирный)
# set -U fish_color_param '#8BE9FD'                     # Аргументы команд (нежно-голубой)
# set -U fish_color_cwd '#68f26d' --bold                # Текущий каталог (неоново-зеленый)
# set -U fish_color_cwd_root '#FF5555' --bold           # Каталог root (красный, жирный)

# # Приветствие в терминале (ihti@archlinux ~>)
# set -U fish_color_user '#68f26d' --bold               # Имя пользователя (неоново-зеленый, жирный)
# set -U fish_color_host '#50FA7B'                      # Хост (неоново-зеленый)
# set -U fish_color_cwd '#68f26d' --bold                # Каталог (неоново-зеленый)

# # Специальные элементы
# set -U fish_color_comment '#6272A4'                   # Комментарии (спокойный синий)
# set -U fish_color_error '#FF5555' --bold              # Ошибки (яркий красный)
# set -U fish_color_match '#50FA7B' --bold              # Подсветка совпадений (неоново-зеленый)
# set -U fish_color_selection black --background='#50FA7B'  # Выделение текста (черный на зелёном)
# set -U fish_color_quote '#F1FA8C'                     # Кавычки (пастельный желтый)
# set -U fish_color_redirection '#BD93F9'               # Перенаправления (фиолетовый)
# set -U fish_color_operator '#FBAE23' --bold           # Операторы (`&&`, `||`)
# set -U fish_color_escape '#FF79C6'                    # Экранированные символы (розовый)

# # Автодополнения и пути
# set -U fish_color_autosuggestion '#44475A'            # Автодополнения (темно-серый)
# set -U fish_color_valid_path '#8BE9FD' --underline    # Валидные пути (голубой с подчеркиванием)

# # Цвета для вывода файлов и папок (например, через ls)
# set -Ux LS_COLORS 'di=1;38;5;208:ln=1;36:so=1;35:pi=1;33:bd=1;33;44:cd=1;33;44:or=1;31'



#set -x XDG_SESSION_TYPE wayland
#set -x WAYLAND_DISPLAY wayland-0

end
