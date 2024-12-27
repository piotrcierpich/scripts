#!/bin/bash

CASE_VAL="some string"

case "$CASE_VAL" in
	"other")
		echo "not"
		;;
	"some String")
		echo "case insensitive"
		;;
	"some string")
		printf "this one's good\n"
		;;
esac
