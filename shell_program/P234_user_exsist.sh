#!/bin/bash
# find the user if it exsist

testuser=admin

if grep $testuser /etc/passwd
then
    echo "Find."
    if ls -a /home/$testuser/.b*
    then
        ehco "Find the directory."
    else
        echo "don't have the directory belong to him."
    fi
else
    echo "Not Find."
fi
