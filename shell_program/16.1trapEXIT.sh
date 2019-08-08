#!/bin/bash

# trap捕获信号

trap "echo 'I quit...'" EXIT

count=1
while sleep 1; do
    echo "number: $count"
    count=$[$count + 1]
done
