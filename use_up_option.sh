#!/bin/bash
# 
# use and consume an option
#
# parse the optional argument
VERBOSE=0;
if [[ $1 = -v ]]
then
	VERBOSE=1;
	shift;
fi
#
# the real work is here
#
for FN in "$@"
do
	if (( VERBOSE == 0 ))
	then
		echo changing $FN
	fi
	chmod 0644 "$FN"
done

