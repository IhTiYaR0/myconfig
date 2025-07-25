#!/bin/bash
# 🎨 Цвета
GREEN="\e[32m"
RED="\e[31m"
BLUE="\e[34m"
YELLOW="\e[33m"
CYAN="\e[36m"
WHITE="\e[97m"
BOLD="\e[1m"
RESET="\e[0m"

PACMAN_FILE="pacman.txt"
AUR_FILE="aur.txt"

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
rm -rf yay
cd ~/myconfig/

# Проверка зависимостей
check_deps() {
    for cmd in figlet sudo pacman yay; do
        if ! command -v $cmd &>/dev/null; then
            echo -e "${RED}❌ Требуется '${cmd}', но он не установлен.${RESET}"
            exit 1
        fi
    done
}

# ASCII Логотип
show_logo() {
    clear
    echo -e "${CYAN}${BOLD}"
    figlet -c "IhtiArch"
    echo -e "${RESET}"
    echo -e "${BLUE}${BOLD}  ⚙️ IhtiArch Installer ⚙️${RESET}"
    echo ""
}

# Красивая рамка
print_box() {
    local msg="$1"
    local len=${#msg}
    local border=$(printf '═%.0s' $(seq 1 $((len + 4))))
    echo -e "${CYAN}╔═$border╗${RESET}"
    echo -e "${CYAN}║${RESET}  ${BOLD}${WHITE}$msg${RESET}  ${CYAN}║${RESET}"
    echo -e "${CYAN}╚═$border╝${RESET}"
}

# Три точки
loading_dots() {
    echo -n " "
    for i in {1..3}; do
        echo -n "."
        sleep 0.2
    done
    echo ""
}

# Установка системных пакетов
install_pacman_packages() {
    if [[ ! -f $PACMAN_FILE ]]; then
        echo -e "${YELLOW}⏭️  Пропускаем pacman: файл не найден.${RESET}"
        return
    fi

    print_box "📦 Установка системных пакетов (pacman)"
    TOTAL=$(wc -l < "$PACMAN_FILE")
    COUNT=0

    while IFS= read -r pkg || [[ -n "$pkg" ]]; do
        [[ -z "$pkg" ]] && continue
        ((COUNT++))
        echo -ne "${CYAN}[${COUNT}/${TOTAL}]${RESET} "
        if pacman -Qi "$pkg" &>/dev/null; then
            echo -e "${GREEN}[✔]${RESET} ${pkg} уже установлен"
        else
            echo -ne "${BLUE}[⬇]${RESET} Устанавливаю ${YELLOW}${pkg}${RESET}"
            loading_dots
            if sudo pacman -S --noconfirm "$pkg" &>/dev/null; then
                echo -e "${GREEN}[✔]${RESET} ${pkg} установлен"
            else
                echo -e "${RED}[✘]${RESET} Ошибка при установке ${pkg}"
            fi
        fi
    done < "$PACMAN_FILE"
}

# Установка AUR пакетов
install_aur_packages() {
    if [[ ! -f $AUR_FILE ]]; then
        echo -e "${YELLOW}⏭️  Пропускаем AUR: файл не найден.${RESET}"
        return
    fi

    print_box "🧩 Установка AUR пакетов (yay)"
    TOTAL=$(wc -l < "$AUR_FILE")
    COUNT=0

    while IFS= read -r pkg || [[ -n "$pkg" ]]; do
        [[ -z "$pkg" ]] && continue
        ((COUNT++))
        echo -ne "${CYAN}[${COUNT}/${TOTAL}]${RESET} "
        if yay -Qi "$pkg" &>/dev/null; then
            echo -e "${GREEN}[✔]${RESET} ${pkg} уже установлен"
        else
            echo -ne "${BLUE}[⬇]${RESET} Устанавливаю ${YELLOW}${pkg}${RESET}"
            loading_dots
            if yay -S --noconfirm "$pkg" &>/dev/null; then
                echo -e "${GREEN}[✔]${RESET} ${pkg} установлен"
            else
                echo -e "${RED}[✘]${RESET} Ошибка при установке ${pkg}"
            fi
        fi
    done < "$AUR_FILE"
}

# Проверка интернета
check_internet() {
    echo -n "🌐 Проверка интернета"
    ping -q -w 2 -c 1 archlinux.org &>/dev/null && echo -e " ${GREEN}OK${RESET}" || {
        echo -e " ${RED}Нет подключения!${RESET}"
        exit 1
    }
}

# === Запуск ===
check_deps
show_logo
check_internet
install_pacman_packages
install_aur_packages
print_box "✅ Все пакеты установлены!"

