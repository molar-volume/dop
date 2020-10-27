#!/bin/bash

git pull git@github.com:molar-volume/dop.git

LAST_MOD=`git log -1 | grep "Date" | sed -e "s/^Date: *//" | tr '\n' ','`
if grep "$LAST_MOD" log.csv | grep "Success"
	then
		exit
	else
		echo -n "$LAST_MOD" >> log.csv
		git log -1 | grep "^\s" | sed -e "s/ *//" | tr '\n' ',' >> log.csv
		docker build -t ml_service . | tee ml_service.build.log | tail -1 >> log.csv
fi

# to set daily execution at 8 pm, append the cron job to crontab
# 0 20 * * * /path/to/week2.sh 
