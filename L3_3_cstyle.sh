#!/bin/bash

k=("a" "b" "c")
len=${#k[*]}

for (( i=0;i<$len;i++ ))
do
echo "${k[$i]}"
done
