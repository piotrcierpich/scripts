#!/bin/bash
INDEX=0
COUNT=${1:-15}
printf "odd or event number from 0 to $COUNT\n"

while [ $INDEX -lt $COUNT ]
do
	ARRAY[$INDEX]=$INDEX
	INDEX=`expr $INDEX + 1`
done
#printf "here's the array ${ARRAY[*]}\n"
INDEX=0
until [ $INDEX -ge $COUNT ]
do
	MOD=`expr ${ARRAY[$INDEX]} % 2`
	if [ $MOD -eq 0 ]
	then
		echo "even number ${ARRAY[$INDEX]}"
		INDEX=`expr $INDEX + 1`
		continue
	fi
	echo "odd number  ${ARRAY[$INDEX]}"
	INDEX=`expr $INDEX + 1`
done
