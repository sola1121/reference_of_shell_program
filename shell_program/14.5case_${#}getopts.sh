#!/bin/bash

echo

while getopts :ab:c opt; do   # 第一个冒号表示忽略错误, 第二个冒号表示c为b的参数
    case "$opt" in 
        a) echo "Found the -a option.";;
        b) echo "Found the -b option.";;
        c) echo "Found the -c option.";;
        *) echo "$1 is not I known.";;
    esac
done
