#!/bin/bash

IFS_OLD=$IFS
IFS=$"\n"

for entry in `cat /etc/passwd`; do    # 取每一行
    echo "Value in $entry -"
    IFS=:
    for value in $entry; do   # 以:为分隔符, 取每个数据
        echo "   $value"
    done
done

IFS=$IFS_OLD

# 数据文件格式 root:x:0:0:root:/root:/bin/bash "\n"
