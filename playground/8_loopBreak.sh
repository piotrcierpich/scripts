#!/bin/bash

for var in 1 2 3
do
	for var2 in 0 3 5
	do
		if [ $var -eq 3 -a $var2 -gt 0 ]
		then
			break 2
		else
			printf "here are %s and %s\n" $var $var2
		fi
	done
done
