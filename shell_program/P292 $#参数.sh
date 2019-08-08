#!/bin/bash

# get the number of parameters

num=1

echo "There are $# parameters supplied."

echo "The last parameter you enter is ${!#}."

# for p in $@; do
#     echo $p
# done

count=1
while test -n "$1"; do   # -n 表示非空, 这里的变量引号不可缺
    echo "Parameter $count: $1"
    count=$[$count+1]
    shift
done
