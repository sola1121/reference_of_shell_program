#!/bin/bash

trap "echo 'Haha, Ctrl-C is trapped.'" SIGINT

count=1
while test $count -le 3; do
    echo "Loop #$count"
    sleep 1
    count=$[$count + 1]
done


count=1
while sleep 1;trap "echo 'I modified the trap. Ctrl-C $count'" SIGINT; do
    echo "$count"
    count=$[$count+2]
    if test $count -ge 50; then
        exit
fi
done
