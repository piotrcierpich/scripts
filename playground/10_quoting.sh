#!/bin/bash
echo "executing file $0"
echo "parameter or default ${1:-100}"
SUBSTITUTION=98
echo "variable substituted ${SUBSTITUTION:=99}"
echo "variable after substitution $SUBSTITUTION"
PARAM=${1}
echo "parameter substituted $PARAM"
DATE_UPTIME=`date ; uptime`
echo "date and uptime $DATE_UPTIME"
