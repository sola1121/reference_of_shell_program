#!/bin/bash

out_file="members.sql"
IFS=','

exec 6>$out_file

cat "$1" | while read lname fname address city state other; do
    echo "$lname, $fname, $address, $city, $state, $other"
    echo "INSERT INTO  members (lname, address, city, state, other) VALUES ('$lname', '$fname', '$address', '$city', '$state', '$other');" >&6
done

exec 6>&-

echo "end"

