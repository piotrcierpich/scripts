#!/bin/sh
echo "PID: $$"
PATH=$PATH:~/scripts
echo "current path: $PATH"
ARG_1="arg1"
4_child.sh "$ARG_1" "arg2"
#RET=bash ./4_child.sh "arg1" "arg2"
#below method with 'source' executes within same process
#RET=source ./4_child.sh "arg1" "arg2"
echo "return from child process: $?"
