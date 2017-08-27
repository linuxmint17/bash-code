#!/usr/bin/env bash
#test-string:evaluate teh value of a string
ANSWER=maybe
if [[ -z "$ANSWER" ]]; then
	echo "There is no answer" >&2
	exit 1
	#statements
fi
if [[ "$ANSWER"="yes" ]]; then
	echo "The answer is YES"
	#statements
elif [[ "$ANSWER"="no" ]]; then
	#statements
	echo "The answer is NO"
elif [[ "$ANSWER"='maybe' ]]; then
	#statements
	echo "The answer is Maybe"
else
	echo "The answer is UNKNOWN"
fi