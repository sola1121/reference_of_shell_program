#!/bin/bash
# 使用csv格式的方式存储用户id和用户名, 再将其读取出来创建新用户

input=user.csv
while IFS=',' read -r userid username; do
    echo "adding $userid"
    useradd -c "$username" -m "$userid"
done < "$input"

