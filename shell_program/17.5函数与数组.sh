#!/bin/bash

function testit {
    local newarray
    newarray=(`echo "$@"`)   # 在函数中获取数组的方式
    echo "The new array value is: ${newarray[*]}"
}

myarray=(1 2 3 4 5)
echo "The original array is ${myarray[*]}"
testit ${myarray[*]}
