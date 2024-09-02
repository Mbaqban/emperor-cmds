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
        ls -C $path
    fi
}
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
        file="$path/$prefix-$id"
        echo $RANDOM >$file
    done
}

read -p "Enter count : " count
mkdir $1
fileGen "./$1" "Mark" $count

dirs=($1/*)
echo
dirs[${#dirs[@]}]=$1

for dir in ${dirs[@]}; do
    echo "content of -> $dir : $(getContent $dir)"
done
