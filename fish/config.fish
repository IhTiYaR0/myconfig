if status is-interactive
    # Commands to run in interactive sessions can go here
    function fish_greeting; end



    
    function fish_prompt
        
        set -g fish_prompt_pwd_dir_length 2  # Показываем только 2 уровня пути
        set_color "#38D100"
        # echo -n (string replace -r "^$HOME!" "/home/$USER" 🖵〘  🗎 (prompt_pwd)〙)
        echo -n (string replace -r "^$HOME!" "/home/$USER" [🖂 (prompt_pwd)])
        # echo -n (string replace -r "^$HOME!" "/home/$USER" 🗎 (prompt_pwd))
         
       # Информация о Git
       set_color '#FFFFFF'
       echo -n ""  # Иконка Git
    set_color yellow
    if test -d .git
        echo -n [ (git rev-parse --abbrev-ref HEAD)] ""  # Текущая ветка

        # Статус изменений
        set -l git_status (git status --porcelain)
        if test -n "$git_status"
            set_color red
            echo -n "✘ "  # Незакоммиченные изменения
        else
            set_color green
            echo -n "✔ "  # Чистый репозиторий
        end
    end

        set_color '#FFFFFF'
        echo -n '❯ '  # Символ завершения
        
    end
    
    
alias n='nvim'
alias v='nvim'
alias ls='lsd --group-dirs=first --icon=always --color=always --size=short'
alias la='lsd -a --group-dirs=first --icon=always --color=always --size=short'
alias lst='lsd -a --tree --depth 2 --icon=always --color=always'
alias cl='clear'
alias rms='sudo rm -rf'

    


set -U fish_color_command '#68f26d' 
set -U fish_color_param green
set -U fish_color_normal '#50FA7B'    
set -U fish_color_error '#FF5555'
set -U fish_color_autosuggestion '#44475A'   
end
