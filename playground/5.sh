#!/bin/bash

#ARR=(one two three)
ARR[0]="value1"
ARR[2]=2
ARR[3]="valueAtThree"
echo "these are array values: ${ARR[0]} ${ARR[1]} ${ARR[2]} ${ARR[3]}"
echo "all values: ${ARR[*]}"

echo "iterating ${#ARR[*]} elements of array:"
for ITEM in ${ARR[*]}
do
	echo "item is: $ITEM"
done

echo "iterating with indices:"
for INDEX in ${!ARR[*]}
do
	printf "index %d has value %s\n" $INDEX ${ARR[$INDEX]}
done
