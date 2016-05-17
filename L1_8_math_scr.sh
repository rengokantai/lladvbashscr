#!/bin/bash
NUMBER=0
NUMBER1=0
NUMBER2=0
CORR_ANS=0
ANS=0
CORR=0
MAXTRY=3

function gen_question(){
	gen_numbers
	deter_oper
	QUESTION="$NUMBER1 $OPER $NUMBER2"
}

function gen_numbers(){
	gen_number
	NUMBER1=$NUMBER
	gen_number
	NUMBER2=$NUMBER
}
function gen_number(){
	NUMBER=$((RANDOM%10+1))
}

function deter_oper(){
	RAND=$((RANDOM%3))
	case $RAND in
		1) OPER='*';;
		2) OPER='-';;
		3) OPER='+';;
		0) OPER='-';;
	esac
}

function cal_answer(){
	CORR_ANS="$(echo "$QUESTION" | bc)"
}

function check_answer(){
if [ $ANS -eq $CORR_ANS 2>/dev/null ]; then
	echo "correct."
	CORR=1
	if [ $TRY -ne 1 ]; then
		write_log
	fi
else
	if [ $TRY -eq $MAXTRY ]; then
		TRY=$(($MAXTRY+1))
		write_log
		echo correct answer is $CORR_ANS
		read
	else
		TRY=$(($TRY+1))
		echo "try again (attempt $TRY)"
	fi
fi
}

function init_log(){
	echo "log $(date +%d%m%Y' '%H:%M)" >>log
}
function write_log(){
	if [ $TRY -le $MAXTRY ]; then
		echo "Answer to $QUESTION ($CORR_ANS) given in $TRY tries" >> log
	else
		echo "Answer to $QUESTION ($CORR_ANS) not given" >> log
	fi
}

init_log

while true
do
	CORR=0
	TRY=1
	gen_question
	cal_answer
	echo "How much is $QUESTION (attempt $TRY)"
	echo "Correct is $CORR_ANS"
	while [ $CORR -ne 1 ] && [ $TRY -le $MAXTRY ]
	do
		read ANS
		check_answer
	done
done
exit 0
