#!/bin/bash

read -p "enter num : " num

for i in $(seq 1 $num); do
    read -p "word-$i : " varar[$i-1]
done

echo "Inputs : ${varar[@]}"

twoD[1, 2]="123"
echo ${twoD[@]}
