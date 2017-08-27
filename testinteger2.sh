#!/usr/bin/env bash
#test-integer:evaluate the value of an integer
INT=-5
if [[ "$INT" =~ ^-?[0-9]+$ ]]; then
	if [[ $INT -eq 0 ]]; then
		echo "INT is zero"
	# elif  [[ $INT -lt 0 ]]; then
elif (($INT < 0)); then
		#statements
			echo "INT is negative"
		else 
			echo "INT is positive"
		fi
			if [[ $((INT % 2)) -eq 0 ]]; then
				echo "INT is even"
			else
				echo "INT is odd"
			fi
fi