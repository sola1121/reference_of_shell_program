#!/bin/bash

factorial () {
    if test $1 -le 1; then
        echo 1
    else
        local temp=$[$1-1]
        local result=`factorial $temp`
        echo $[$result*$1]
    fi
}

if test -n $1; then
    value=$1
else
    read -p "Enter value: " value
fi
result=`factorial $value`
echo "The factorial of value is: $result"
