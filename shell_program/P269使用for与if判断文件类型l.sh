#!/bin/bash

comm=`ls`   # $(./*) 匹配当前文件夹的所有目录与文件

for info in $comm; do
    if test -d $info; then   # [ -d $info ] 
        echo "$info is a directory."
    elif test -f $info; then   # [ -f $info./ ]
        echo "$info is a file."
    else
        echo "what's this $info?"
    fi
done

# 如果文件中有空格, 以上方法将无法应对, 应该用for命令来遍历目录