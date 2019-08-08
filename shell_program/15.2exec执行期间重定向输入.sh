#!/bin/bash

exec 0< file_in

count=1
while read line; do
    echo "Line $count: $line"
    count=$[$count+1]
done
