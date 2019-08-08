#/bin/bash

# ${A[0]}代表数组A中的第一个元素a,
# ${A[@]}是数组A中的全部元素，  ${A[*]}
# ${#A[@]}是数组A中全部元素的个数  ${#A[*]}

read -p "输入一个数组: " -a arr
total=${#arr[*]}
echo "The original array is: ${arr[*]}, 长度: $total"

read -p "add an element: " -a add
combine=(${arr[*]} ${add[*]})
echo "The added array is: ${combine[*]}, 新的长度: ${#combine[*]}"
