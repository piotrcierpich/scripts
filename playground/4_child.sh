#!/bin/sh
echo "child PID: $$, file name: $0"
echo "no of arguments: $#, arguments: one: $1 two: $2"
echo "all arguments: $@"
echo "enumerating arguments:"
for ARG in $@
do
	echo $ARG
done
