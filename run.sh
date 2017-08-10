#!/bin/bash

LOG_FILE=/opt/mirth-connect/logs/mirth.log


java -jar mirth-server-launcher.jar &

while [ ! -f "/opt/mirth-connect/logs/mirth.log" ]
do
	echo "Waiting for mirth log file."
	sleep 2
done

while ! grep "Web server running at" $LOG_FILE;
do
	echo "Waiting until  web server starts"
	sleep 2
done

java -jar mirth-cli-launcher.jar -a https://mirth-connect:8443 -s ./channels/channels

tail -f $LOG_FILE
