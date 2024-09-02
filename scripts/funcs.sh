#!/bin/bash

# function func1() {
#     echo $(($1 * $2))
#     echo $@
#     echo $#
#     echo
#     return 0
# }

# func1 8 8

# echo $?
# res=$(func1)
# echo $res

function func1() {
    echo $(($1 / $2))
    return 0
}
read -p "enter num-1 : " num1
read -p "enter num-2 : " num2

func1 $num1 $num2

echo $?
