#!/bin/bash

# 用getopt格式化后的输出传递给set用于$@

set -- `getopt -q ab:cd "$@"`

echo

while test -n "$1"; do
    case "$1" in 
        -a) echo "Found the -a option.";;
        -b) param=$2
            echo "Found the -b option, the follow param is $param"
            shift;;
        -c) echo "Found the -c option.";;
        --) shift
            break;;
        *) echo "$1 is not an option."
    esac
    shift
done

echo "之后由for遍历输出, 为shift之后剩下的\$@"
count=1
for param in "$@"; do
    echo "Parameter #$count: $param"
    count=$[$count+1]
done
