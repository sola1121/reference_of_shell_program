#!/bin/bash

echo "--在case中定义双破折号表示列表的结束, 其后将视为参数正常输入"

while test -n "$1"; do
    case "$1" in
        -a|-all) echo "The ALL parameter I found.";;
        -b|-balance) echo "The BALANCE parameter I found.";;
        -c|-cut) echo "The CUT parameter I found.";;
        --) shift
            break;;
        *) echo "$1 is not I want."
    esac
    shift
done

echo $*
