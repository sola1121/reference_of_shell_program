#!/bin/bash
# --file-selection
# --text-info
# --question

exec 1>/dev/null

while ((1<2)); do
    zenity --question --text "开始选择可读文件?" --title "选择框" --width 100 --height 50
    if test $? -eq 1; then
        break
    fi

    temp=`zenity --file-selection`
    if test $? -eq 0; then
        zenity --text-info --filename=$temp
    fi
done

 