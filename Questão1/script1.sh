#!/bin/bash

if test -e $1; then
	linhas=$(cat $1 | wc -l )
	if [ $2 -le $linhas ]; then
		cat -n $1 | grep $2 | cut -c8-
	else
		echo "Falha: o arquivo $1 possui apenas $linhas linhas."
	fi
else
	echo "Infelizmente o arquivo não existe."

fi
