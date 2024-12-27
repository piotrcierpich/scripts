#!/bin/sh

#variable assignment
NUM_VAR=123
STR_VAR="some string"
readonly NUM_VAR #this makes it readonly
echo $NUM_VAR
echo "STR_VAR is: $STR_VAR"
unset STR_VAR
echo "unset STR_VAR and now it's: $STR_VAR"
echo "this is path: $PATH"
