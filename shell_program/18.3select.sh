#!/bin/bash

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

PS3="Enter option: "
select option in "Display disk space" "Display logged on users" "Display memery usage" "Exit program"; do
    case $option in 
        "Exit program") break;;
        "Display disk space") diskspace;;
        "Display logged on users") whoseon;;
        "Display memery usage") memusage;;
        *) clear; echo "Sorry, wrong selection";;
    esac
done
clear
