#!/bin/bash

exchange(){
	local temp=${C[$1]}
	C[$1]=${C[$2]}
	C[$2]=$temp
	return
}

declare -a C

C=(A C B K)

clear

echo "0: ${C[*]}"


numberofelem=${#C[*]}
let "comp = $numberofelem-1"
