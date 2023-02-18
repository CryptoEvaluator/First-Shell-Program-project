#!/bin/bash
if ! [ -d backup ]; then
	mkdir backup
fi
cp *.log backup
echo "Backup complete...."
