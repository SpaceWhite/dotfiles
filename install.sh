#!/bin/bash
function setup() {
    sudo apt-get install -y "$@"
}

function update() {
    sudo apt-get update -y
}

export BASEDIR=$(dirname "$0")
export TOOLDIR=$HOME/tools
mkdir -p $TOOLDIR
export -f setup

if [ "$1" == "-h" ] || [ "$1" == "--help" ]; then
    echo "Usage: `basename $0` [-h] [ script path ]"
    exit 0
fi

if [ ! -z "$1" ]; then
    update
    $1
    exit 0
fi

update && setup dialog



OPTIONS=(1 "All"
         2 "Base packages"
         3 "Development packages and libraries"
         4 "Security software"
         5 "Quit")

HEIGHT=15
WIDTH=70
CHOICE_HEIGHT=5


CHOICE=$(dialog --clear \
                --backtitle "Dotfile" \
                --title "Install packages" \
                --menu "Choose one of the following options" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)

clear
case $CHOICE in
    1)
        base/all.sh
        dev/all.sh
        sec/all.sh
        ;;
    2)
        base/all.sh
        ;;
    3)
        dev/all.sh
        ;;
    4)
        sec/all.sh
        ;;
    *)
        echo "[*] Quit"
        ;;
esac

