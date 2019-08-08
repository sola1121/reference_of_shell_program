#!/bin/bash

func_menu(){
    clear
    echo
    echo -e "\t\t\tSys Admin Menu\n"
    echo -e "\t1. Display disk space"
    echo -e "\t2. Display logged on users"
    echo -e "\t3. Display memory usage"
    echo -e "\t0. Exit menu\n\n"
    echo -e -n "\t\tEnter option: "
    read -n 1 option
}

function diskspace {
    clear
    df -k
}

function whoseon {
    clear
    who
}

function memusage {
    clear
    cat /proc/meminfo
}

while ((1<2)); do
    func_menu
    case $option in
        0) break;;
        1) diskspace;;
        2) whoseon;;
        3) memusage;;
        *) clear
        echo "Sorry, wrong selection.";;
    esac
    echo -e "\n\n\t\t\tHit any key to continue."
    read -n 1 line
done
