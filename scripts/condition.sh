#!/bin/bash

conditioner=1

if [[ "$conditioner" == 1 ]]; then
    echo "pass1"
elif [ $conditioner == 2 ]; then
    echo "pass2"
else
    echo "else"
fi
