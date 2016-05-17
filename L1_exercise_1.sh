#!/bin/bash
#monitor the availablity of a service,of which the name nas to be specified
# as a boot argument for the script. If the monitor service stops:
# 1) restart service 2) write a mess to syslog 3) send email

# exit code doc
# 3: no argument provided
# 4: else

if [ -z $1 ]; then
	echo Arg needed.
	exit 3
else
	SERVICE=$1
fi

# run without stopping to do the monitoring task
# 1. verify that $SERVICE is running

if ps aux | grep $SERVICE | grep -v grep
then
	echo GOOD.
else
	echo \$SERVICE could not found
	echo try again
	exit 4
fi
# 2. monitor
while ps aux | grep $SERVICE | grep -v grep | grep -v L1
do
	sleep 2
done
# actions if services is failing
service $SERVICE start
logger $SERVICE restarted
mail -s "serv: $SERVICE restarted at $(date +%d%m%Y %H:%M)" root < .

