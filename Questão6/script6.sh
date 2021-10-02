#!/bin/bash

read -p "Digite uma senha: " senha

if [$(echo $senha | grep -E "[0-9]")];then
	if [$(echo $senha | grep -E "[A-B]")];then
		if [$(echo $senha | grep -E ".{8,}")];then
			echo "Senha válida"
		else
			echo "Senha inválida"
		fi
	else
		echo "Senha inválida"
	fi
else
	echo "Senha inválida"

fi