#!/bin/bash

# $ ./14.6case_\$\{#\}getopts_OPRIND.sh -a -b "b\'sparam" -e -t -c -d -- pa1 pa2 pa3
    # Found the -a option.
    # Found the -b option.
    # Unknown option: ?
    # Unknown option: ?
    # Found the -c option.
    # Found the -d option.

    # Parameter 1: pa1
    # Parameter 2: pa2
    # Parameter 3: pa3

echo

echo `getopt -q ab:cd "$@"`

echo

while getopts :ab:cd opts; do
    case "$opts" in 
        a) echo "Found the -a option.";;
        b) echo "Found the -b option.";;
        c) echo "Found the -c option.";;
        d) echo "Found the -d option.";;
        *) echo "Unknown option: $opts";;
    esac
done
echo "$OPTIND"
shift $[$OPTIND-1]    # 移动参数总位数减一位
echo 
count=1
for param in "$@"; do
    echo "Parameter $count: $param"
    count=$[$count+1]
done
