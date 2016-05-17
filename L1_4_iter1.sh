#!/bin/bash
echo select a dict
select dir in /bin /etc
do

if [ -n "$dir" ]
then
	DIR=$dir
	echo you selected $DIR
	export DIR
	break
else
	echo invalid.
fi
done
