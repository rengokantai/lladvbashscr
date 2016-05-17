#!/bin/bash
arr=(one two [3]=three)
echo size ${#arr[*]}

echo Array items:
for i in ${arr[*]}
do
printf " %s\n" $i
done

echo Array indexes:
for i in ${!arr[*]}
do
printf " %d\n" $i
# $i must precedes with a blank
done


echo Array items and indexes
for i in ${!arr[*]}
do
printf "%4d: %s\n" $i ${arr[$i]}
done
