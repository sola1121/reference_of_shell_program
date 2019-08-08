#!/bin/bash

echo "处理跟随在某个参数后面的选项"

while test -n "$1"; do
    case "$1" in
        -a|-all) echo "The ALL parameter I found.";;
        -b|-balance) 
            follow_param=$2
            echo "The BALANCE parameter I found. I will begin rebalance at $follow_param."
            shift;;
        -c|-cut) echo "The CUT parameter I found.";;
        --) shift
            break;;
        *) echo "Nothing I found."
    esac
    shift
done

