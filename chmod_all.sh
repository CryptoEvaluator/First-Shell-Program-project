#!/bin/bash
# change permissions on brunch of files
#
for FN in $*
do
	echo changing $FN
	chmod 0750 $FN
done

