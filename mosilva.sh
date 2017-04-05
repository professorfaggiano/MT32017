#!/bin/bash
# Autor: Matheus Oliveira da Silva

echo "Ola, seja bem-vindo"

USER=matheus
SENHA=matheus
SAIR=n

	if [$SAIR != $SAIR]; then
	 clear
	 echo
	 echo -n "Login: "
	 read LOGIN
	 echo -n "Senha: "
	 read -s SENHAA
	 echo

	if [$LOGIN == $USER]; then
		if [$SENHAA == $SENHA]; then
		 SAIR=SAIR
		 echo "Acertou"
	else
		sleep 1
		echo "Login Incorreto"
		echo
		fi
	else
		sleep 1
		echo "Senha Incorreta"
		echo
		fi

carq (){
	clear
	echo -n "Qual o nome do arquivo que deseja criar: "
	read ARQ
	'> $ARQ'
	"Comando executado"
}

darq (){
	clear
	echo -n "Qual o arquivo que deseja excluir: "
	read ARQ
	'rm -rf $ARQ'
	"Comando executado"
}

cgzip (){
	clear
	echo -n "Qual arquivo que deseja compactar: "
	read ARQ
	'gzip $ARQ'
	"Comando executado"
}

cbzip (){
	clear
	echo -n "Qual arquivo que deseja compactar: "
	read ARQ
	'bzip2 $ARQ'
	"Comando executado"
}

dgzip (){
	clear
	echo -n "Qual arquivo voce deseja descompactar: "
	read ARQ
	'gunzip $ARQ'
	echo "Comando executado"
}


dbzip (){
	clear
	echo -n "Qual arquivo voce deseja descompactar: "
	read ARQ
	'bunzip2 $ARQ'
	echo "Comando executado"
}

MENU=0
	while [$MENU != 9]; do
	clear
	echo "1) Crie um arquivo"
	echo "2) Apague um arquivo"
	echo "3) Compacte um arquivo com GZIP"
	echo "4) Compacte um arquivo com BZIP"
	echo "5) Descompacte um arquivo com GZIP"
	echo "6) Descompacte um arquivo com BZIP2"
