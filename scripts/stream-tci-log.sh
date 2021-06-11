#!/bin/bash

echo "Starting streaming log of $APP_NAME"
rm -f "./logs/${APP_NAME}.log"
./tibcli monitor applog --stream "$APP_NAME" | stdbuf -oL grep -v "(ง'̀-'́)ง" >> "logs/${APP_NAME}.log" &

echo "Log streaming started"

sleep 60

while ! test "`find ./logs/${APP_NAME}.log -mmin +${HC_MIN}`"; 
do 
	echo "Log stream is up and running"
	sleep 30; 
done;

echo "Log stream failure"
