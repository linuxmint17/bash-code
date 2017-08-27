#!/usr/bin/env bash
#test-file: Evaluate the status of a file
FILE=~/.bashrc
if [ -e "$FILE"];then
	if [ -f "$FILE"];then
		echo "$FILE is a regular file."
	fi
	if [ -d "FILE"];then
		echo "$FILE is a directory"
	fi
	if [[ -r "$FILE" ]]; then
		#statements
		echo "$FILE is readable"
	fi
	if [[ -w "$FILE" ]]; then
		#statements
		echo "$FILE is writable"
	fi
	if [[ -x "$FILE" ]]; then
		#statements
		echo "$FILE is executable/searchable"
	fi
else
	echo "$FILE does not exist"
	exit 1
fi

exit