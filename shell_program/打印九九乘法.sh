#!/bin/bash

for ((x=1; x<=9; x++)); do
    echo "column: $x"
    for ((y=$x; y<=9; y++)); do
        z=$[$x*$y]
        echo "$x * $y = $z"
    done
done
