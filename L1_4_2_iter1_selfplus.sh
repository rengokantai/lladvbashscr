#!/bin/bash

CTR=$1
CTR=$(( CTR * 10 ))

minus(){
	CTR=$((CTR - 1))
	sleep 1
}

while [ $CTR -gt 0 ]
do 
	echo $CTR seconds remaining
done

[ $CTR = 0 ] && echo out of time && minus
[ $CTR = "-1" ] && echo 1 sec later && minus

while true
do
	echo ${CTR#*-} seconds late
	minus
done

