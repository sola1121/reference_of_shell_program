#!/bin/bash

function arraydblr {
    local origarray
    local newarray
    local elements
    local i
    origarray=(`echo "$@"`)
    newarray=(`echo "$@"`)
    elements=$[$# - 1]
    for ((i=0; i<=$elements; i++)) {
        newarray[$i]=$[${origarray[$i]}*2]   # 新数组的元素将是传入的二倍
    }
    echo ${newarray[*]}
}

myarray=(1 2 3 4 5)
echo "The original array is: ${myarray[*]}"
arg1=`echo ${myarray[*]}`
result=(`arraydblr $arg1`)   # 获取函数传回来的数组
echo "The new array is: ${result[*]}"
