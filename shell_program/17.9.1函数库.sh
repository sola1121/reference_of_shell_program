addem() {
    echo $[$1+$2]
}

mulem() {
    echo $[$1*$2]
}

divem() {
    if test $2 -ne 0; do
        echo $[$1/$2]
    else
        echo -1
    fi
}
