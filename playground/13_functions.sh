#!/bin/bash

outerFunction (){
	echo "outer function param1 $1 param2 $2"
	innerFunction innerValue
	echo "inner function returned $?"
	return 10
}

innerFunction (){
	echo "inner function $1"
	return 100 
}

outerFunction "value1" "value2"
echo "last return value from function outer:$?"
echo "remove function: unset -f, similar to variable but - is required:"
unset -f outerFunction

echo "returning a result can be passed as standard output"
#functionReturnsString(){
#alternatively use function keyword to declare a function:
function functionReturnsString {
	echo "lazy fox"
}
RET_VAL=$(functionReturnsString)
echo $RET_VAL
