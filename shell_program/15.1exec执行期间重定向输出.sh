#!/bin/bash

exec 2>errout   # 执行期间将错误信息重定向到文件

echo "该句将会重定向到stderr, 是否能输出到文件呢" >&2   # 答案是肯定的
