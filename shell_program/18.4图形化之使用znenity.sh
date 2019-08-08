#!/bin/bash
# using zenity to create a menu
# --text-info 显示含有文本的文本框
# --list 显示多选列表或单选列表对话窗口


temp=`mktemp -t temp.XXXXXX`
temp2=`mktemp -t temp2.XXXXXX`

function diskspace {
    df -k > $temp
    zenity --text-info --title "Disk space" --filename=$temp --width 750 --height 50
}

function whoseon {
    who > $temp
    zenity --text-info --title "Logged users" --filename=$temp --width 500 --height 50
}

function memusage {
    cat /proc/meminfo > $temp
    zenity --text-info --title "Memory usage" --filename=$temp --width 300 --height 500
}

while ((1<2)); do
    zenity --list --radiolist --title "Sys Admin Menu" --column "Select" --column "Menu Item" FALSE "Display disk space" FALSE "Display users" FALSE "Display memory usage" FALSE "EXIT" > $temp2
    if test $? -eq 1; then
        break
    fi

    selection=`cat $temp2`
    case $selection in 
        "Display disk space") diskspace;;
        "Display users") whoseon;;
        "Display memory usage") memusage;;
        "EXIT") break;;
        *) zenity --info "Sorry, invalid selection."
    esac
done
