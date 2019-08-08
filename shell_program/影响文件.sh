#!/bin/bash

str0=$(basename $0)
str1=$1

echo "开始写入文件: $str0, $str1"

if echo $str0 $(date) >> 影响到的文件.txt && echo $str1 >> 影响到的文件.txt; then
        echo "执行完毕"
else
    echo "没有任何效果"
fi
