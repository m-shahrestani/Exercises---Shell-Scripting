#!/bin/bash

#https://stackoverflow.com/questions/806906/how-do-i-test-if-a-variable-is-a-number-in-bash
re='^[0-9]+$'
for i in $@
do
	if ! [[ $i =~ $re ]]
	then
		echo "\"$i\" is not number"
		exit 1
	fi
done

if [ $# -eq 0 ]
then
	echo "No arguments supplied"
	exit 1
elif [ $# -eq 2 ]
then
	SUM=$(($1 + $2))
	echo "$1 + $2 = $SUM"
	if [ $1 -gt $2 ]
    	then 
    		echo "Greater one is: $1"
    	elif [ $1 -lt $2 ]
    	then
    		echo "Greater one is: $2"
    	else
    		echo "$1 is equal to $2"
    	fi
    	exit 0
elif [ $# -eq 1 ]
then
	echo "Less than two parameters"
	exit 1
elif [ $# -gt 2 ]
then
	echo "More than two parameters"
	exit 1
fi


