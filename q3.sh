#!/bin/bash

function sum_of_digits() {
	local n=$1
	local sum=0
	local m
	while [ $n -gt 0 ]   
		do
		let m=n%10    
		let sum=sum+m    
		let n=n/10
		done
	echo $sum
}

re='^[0-9]+$'
while true
	do
	read -p "Enter a number: " NUM
	if ! [[ $NUM =~ $re ]]
	then
		echo "\"$NUM\" is not number"
	else
		REV_NUM=$(echo $NUM | rev)
		echo "$REV_NUM"
		sum_of_NUM=$(sum_of_digits $NUM)
		echo "Sum of digits is $sum_of_NUM"
	fi
	done

