#!/bin/bash

# -n1表示指接收单个字符后退出

read -n1 -p "Do you want to continue [Y/N]? " answer

if test $answer = "Y" || test $answer = "y"; then
    echo
    echo "Fine, contiue on..."
elif test $answer = "N" || test $answer = "n"; then
    echo
    echo "Ok, goodby."
fi


read -n1 -p "Do you want to continue [Y/N]? " answer

case $answer in 
    Y|y) echo
         echo "Fine, continue on...";;
    N|n) echo
         echo "Ok, goodby."
         exit;;
esac

echo "End"
