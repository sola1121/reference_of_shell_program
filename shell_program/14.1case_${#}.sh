#!/bin/bash

echo "You input $*, I'll look for some words."

while test -n "$1"; do
    case "$1" in
        -a|-all) echo "The ALL parameter I found.";;
        -b|-balance) echo "The BALANCE parameter I found.";;
        -c|-cut) echo "The CUT parameter I found.";;
        *) echo "Nothing I found."
    esac
    shift
done
