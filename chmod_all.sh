#!/bin/bash
# change permissions on brunch of files
#
for FN in $*
do
	echo changing $FN
	chmod 0750 $FN
done

echo "Adding this code to github."
echo "Our code become public place by github"