#!/bin/bash
# 针对$PATH环境变量中的目录进行扫描

IFS_OLD=$IFS
IFS=:

for floder in $PATH; do
    echo "$floder: "
    for file in $floder/*; do    # 列出当前查询的目录
        if test -x $file; then
            echo "   $file"   # 列出此目录中的可执行文件
        fi
    done
done

# 分析的数据文件样式: /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games
