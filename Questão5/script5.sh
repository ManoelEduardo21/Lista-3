#!/bin/bash

echo Não complique tudo antes de acontecer.

case $1 in
	"-a") echo -e "\nLista diretórios\n\n$(ls -ld */ | grep -E "[/]$"| cut -d ' ' -f9)" ;;
	"-b") echo -e "\nLista arquivos executáveis\n\n$(ls -F | grep -E '[*]' | tr '*' ' ')";;
	"-c") echo -e "\nLista os links simbólicos\n\n$(ls -l | grep -E "^[l]" | cut -c44-)" ;;
	"-d") echo -e "\nLista os scripts shell\n\n$(ls | grep -E ".*\.sh")" ;;
	"-e") echo -e "\nKLista os arquivos menores que 200 bytes\n\n$(du -ab | grep -E "\b^([0-2][0][0]|[0-1][0-9][0-9]|[0-9][0-9]|[0-9])\b)";;
esac