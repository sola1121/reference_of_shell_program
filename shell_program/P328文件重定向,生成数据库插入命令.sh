#!/bin/bash

# 将csv中的内容生成数据库插入SQL命令

out_file="members.sql"
IFS=","

while read lname fname address city state other; do   # read读取每行
    cat >> $out_file <<  EOF
    INSERT INTO  members (lname, address, city, state, other) 
    VALUES ("$lname", "$fname", "$address", "$city", "$state", "$other");
    EOF
done < ${1}
