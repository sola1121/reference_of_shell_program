#!/bin/bash

# 函数就像在脚本中的另一个脚本, 可以如同脚本传递参数那样传递参数给函数

function fun_1 {
    echo $[$1*$2]   $ 这里的位置变量是函数的
}

if test $# -eq 2; then    # 判断脚本所获得的参数个数
    result=`fun_1 $1 $2`   # 这里的位置变量是脚本的
    echo "The result is: $result"
else
    echo "Need two integer."
fi
