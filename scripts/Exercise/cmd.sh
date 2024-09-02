#!/bin/bash

checkType() {

    path=$1

    if [[ -f $path ]]; then
        echo "isFile"
    elif [ -d $path ]; then
        echo "isDir"
    else
        echo "Error. possibly path dosent exist."
        return 2
    fi
    return 0
}

# checkType "./cmd.sh/sdkgsf.ksffg"
# checkType "."

getContent() {
    path=$1
    chk_res=$(checkType $path)
    # shouldent run any command befor this
    if [[ $? != 0 ]]; then
        echo $chk_res
        return 2
    elif [[ $chk_res == 'isFile' ]]; then
        cat $path

    elif [[ $chk_res == 'isDir' ]]; then
        ls $path
    fi
}

# getContent "/home/mbaqban/Desktop/tasks"
# getContent "/home/mbaqban/Desktop/ddd"

fileGen() {
    path=$1
    prefix=$2
    count=$3

    chk_res=$(checkType $path)
    if [[ $? != 0 ]]; then
        echo $chk_res
        return 2
    elif [[ $chk_res == 'isFile' ]]; then
        echo "Error. Enter a valid directory path."
        return 2
    fi

    for id in $(seq 1 $count); do
        file="$path/$prefix-id$id"
        echo $RANDOM >$file
    done
}

fileGen "./foolder" "mark" 3
