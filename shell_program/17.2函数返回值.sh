#!/bin/bash

# $?变量记录最近命令执行后的状态码, return 返回指定的状态码(0-255)
func_1() {
    read -p "Input two value, result in (0-255): " x y
    return $[x*y]   # 只能返回0-255之间的
}


# 可以用变量来绑定输出
func_2 () {
    read -p "Input two value: " x y
    echo $[x*y]
}


func_1
echo "the func_1's result is $?"

result=`func_2`
echo "the func_2's result is $result"
