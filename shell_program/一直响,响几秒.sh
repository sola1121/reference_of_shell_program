#!/bin/bash

while ((1<2)); do
    sleep 1
    echo -e "\r\a\c"
done


for ((i=0; i<20000; i++)) {
    if test i -lt 5; then
        sleep 5
        echo -e "\r\a\c"
    elif test i -lt 20; then
        sleep 3
        echo -e "\r\a\c"
    else
        sleep 1
        echo -e "\r\a\c"
    fi
}
