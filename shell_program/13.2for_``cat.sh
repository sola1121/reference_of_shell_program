#!/bin/bash

if s=`cat ./日本語拼写练习.txt`; then   # s=$(cat ./日本語拼写练习.txt)
    for con in $s; do
        echo $con
    done
else
    echo "文件不存在"
fi
