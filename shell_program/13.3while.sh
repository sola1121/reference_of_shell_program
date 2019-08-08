#!/bin/bash

var=1

while test $var -le 5; do
    echo $var
    var=$[$var+1]
done
