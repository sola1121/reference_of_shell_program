#!/bin/bash

function addarray {
    local sum=0; local newarray
    newarray=(`echo "$@"`)
    for value in ${newarray[*]}; do   # 遍历数组
        sum=$[$sum+$value]   # 数组中的数的和
    done
    echo $sum
}

myarray=(1 2 3 4 5)
echo "The original array is: ${myarray[*]}"
arg1=`echo ${myarray[*]}`   # 数组传值的方式, 使用echo重演一遍
result=`addarray $arg1`
echo "The result is $result"
