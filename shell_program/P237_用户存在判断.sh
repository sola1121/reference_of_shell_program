#!/bin/bash

testuser=admin

if grep $testuser /etc/passwd; then
    echo "The user $testuser exsists in system."
elif ls -d /home/$testuser; then
    echo "The user $testuser doesn't exsist in system."
    echo "However, $testuser has a directory."
else
    echo "The user $testuser doesn't exsist in system."
    echo "Also, the $testuser doesn't have a directory."
fi
