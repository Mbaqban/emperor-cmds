#!/bin/bash

read -p "last name : " name
read -p "birth year(13**) : " age
read -p "sex(m/f) : " sex

if [[ -z $name || -z $age || -z $sex ]]; then
    echo "Error"
    exit
fi

if [[ "$sex" == 'm' ]]; then
    sex=Mr
elif [[ "$sex" == 'f' ]]; then
    sex=Ms
else
    sex=Mr/Ms
fi

echo "Hello $sex.$name. you are $((1403 - $age)) years old."
