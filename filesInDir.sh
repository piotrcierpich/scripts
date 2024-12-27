#!/bin/sh
find $1 -maxdepth 1 -type f | cut -d "/" -f 2 
