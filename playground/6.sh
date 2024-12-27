#!/bin/bash
echo "booleani logic: "
A=2
if [ $A -gt 1 ]      
then
        echo "arr 2 is greater than 1"
fi

if [ false -o 2 -lt 3 ]
then
	echo "or is -o, and is -a"
fi

EMPTY_STR=""
if [ -z $EMPTY_STR ]
then
	echo "-z is string empty"
fi

if [ $EMPTY_STR ]
then
	echo "non empty"
else
	echo "empty string"
fi

STR1="One"
STR_1="One"
if [ $STR1 = $STR_1 ]
then
	printf "these are equal %s and %s \n" $STR1 $STR_1
fi

if [ -x "/bin/bash" ]
then
	echo "bash is executable"
fi
