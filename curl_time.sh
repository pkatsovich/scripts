#!/bin/bash

usage() {
	echo "# This tool measures the time it takes to complete a request
# USAGE: $0 http://whatever.url.you.want"
}
if [ ! -z $1 ] 
	then 
		RESULT=$(curl -s -w "%{time_total}\n" -o /dev/null $1)
		echo "RESULT: $1 - $RESULT"
	else 
		usage
		echo "ERROR: Missing URL"
			exit 1
fi
