#! /usr/bin/env bash
while :
do
	printf "hostname: %s; date: %s; user: %s\n" $(hostname) $(date +"%d-%m-%Y") $(whoami)
	sleep 3
done
