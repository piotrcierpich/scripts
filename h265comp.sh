#!/bin/bash

no_ext () {	
	local FILE_NO_ABS=$( echo $1 | cut -d '/' -f 2 )
	local FILE_NO_EXT=$( echo $FILE_NO_ABS | cut -d '.' -f 1 )
	local EXT=$( echo $FILE_NO_ABS | cut -d '.' -f 2 )
	FILE_ENCODED=${FILE_NO_EXT}_h265.${EXT}
	return 
}

for FILE in "."/*
do
	if [ -f $FILE ]; then
		echo FILE: $FILE
		no_ext $FILE
		echo FILE_ENCODED: $FILE_ENCODED
		ffmpeg -i VID_20210404_165440.mp4 -strict -2 -c:v libx265 -c:a aac VID_20210404_165440_h265.mp4
	fi
done
