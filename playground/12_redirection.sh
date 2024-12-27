#!/bin/bash
echo 'redirecting'
expr 2 / 0 1>std.out 2>err.out
echo "append std to a file, redirect error to standard"
expr 2 / 0 >>err.out 2>&1
echo '"expr 2 / 0 2> /dev/null " has no output'
expr 2 / 0 2> /dev/null
CONTENT=`cat err.out`
echo "content will have two errors, one from redirection, second from concatenating standard output with redirected error output into it: $CONTENT"
rm std.out err.out
