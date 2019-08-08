#!/bin/bash

temp=3

fun() {
    local temp=6
    echo "局部变量temp: $temp"
}

fun
echo "全局变量temp: $temp"
