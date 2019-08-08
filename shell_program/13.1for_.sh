#!/bin/bash

count=1
s="a b c d e f g h i j k l m n o p q r s t u v w x x y z"
for con in $s;
do
echo "number: $count, word: $con"
count=$[$count+1]
done
