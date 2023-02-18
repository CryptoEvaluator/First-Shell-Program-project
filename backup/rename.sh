#!/bin/bash
#
# rename files that end in .bad to .bash
#
for FN in *.log
do
	mv "${FN}"  "${FN%log}bak"
done

