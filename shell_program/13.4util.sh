#!/bin/bash

var=5

until test $var -le 0; do
    echo $var
    var=$[$var-1]
done
