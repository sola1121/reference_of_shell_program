#!/bin/bash

source ./17.9.1函数库.sh   # ../17.9.1函数库.sh

value1=10
value2=5

r1=`addem $value1 $value2`
r2=`mulem $value1 $value2`
r3=`divem $value1 $value2`

echo "The result of addem is: $r1"
echo "The result of mulem is: $r2"
echo "The result of divem is: $r3"
