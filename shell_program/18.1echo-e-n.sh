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

    while ((0<1));do
        read -n 1 option
        if test $option -eq 1 || test $option -eq 2 || test $option -eq 3 || test $option -eq 0; then
            echo -e "\n\nYou choice $option. \n"
            break
        else
            echo -e "\nYou need input integer 0 to 3."
        fi
    done
}

func_menu
