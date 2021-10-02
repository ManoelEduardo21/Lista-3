#!/bin/bash

while read email ;do
		if [ $(echo $email | grep -E --color ".+\@.+\..+") ]; then
		echo "OK: $email"
	else
		echo "FAIL: $email"
	fi
done < $1