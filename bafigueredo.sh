#!/bin/bash
#Autor: Bruno Almeida Figueredo
#Contato: 27bruno3@gmail.com
#PROVA

USER=root
SENHA=root
SAIR=nao


while [ $SAIR != SAIR ]; do
clear
echo
QNT=1
   while ((QNT <= 5 )); do
echo -n "Digite o usuário: "
read LOGIN
echo -n "Digite a senha: "
read -s PASSW
echo

	if [ $LOGIN == $USER ]; then
		if [ $PASSW == $SENHA]; then
		SAIR=SAIR
		QNT=5
		echo "Passou"
	else
		sleep 3
		echo
		echo "Login Incorrect"
		fi
	else
		sleep 3
		echo
		echo "Falhou Usuário"
	fi
let QNT=($QNT+1)
  done
   done

carquivo (){
	clear
	echo -n "Qual o nome do arquivo que deseja criar?: "
	read ARQ
	'> $ARQ'
	echo "Comando executado"
	echo "Pressione [Enter] para finalizar"
	read TEMP
}

darquivo (){
	clear
 	echo -n "Digite o nome do arquivo que deseja excluir: "
	read ARQ
	'rm -rf $ARQ'
	echo "Comando executado"
	echo "Pressione [Enter] para finalizar"
	read TEMP
}

compactg (){
	clear
	echo -n "Digite o nome do arquivo que deseja compactar com GZIP: "
	read ARQ
	'gzip $ARQ'
	echo "Comando executado"
	echo "Pressione [Enter] para finalizar"
	read TEMP
}

compactb (){
	clear
	echo -n "Digite o nome do arquivo que deseja compactar com BZIP2: "
	read ARQ
	'bzip2 $ARQ'
	echo "Comando executado"
	echo "Pressione [Enter] para finalizar"
	read TEMP
}

dcompactg (){
	clear
	echo -n "Digite o nome do arquivo que deseja descompactar com GZIP: "
	read ARQ
	'gunzip $ARQ'
	echo "Comando executado"
	echo "Pressione [Enter] para finalizar"
	read TEMP
}


dcompactb (){
	clear
	echo -n "Digite o nome do arquivo que deseja descompactar com BZIP2: "
	read ARQ
	'bunzip2 $ARQ'
	echo "Comando executado"
	echo "Pressione [Enter] para finalizar"
	read TEMP
}

MENU=1
while [ $MENU !=9 ]; do
	clear
	echo "1) Crie um arquivo;"
	echo "2) Apague um arquivo;"
	echo "3) Compacte com GZIP;"
	echo "4) Compacte com BZIP2;"
	echo "5) Descompacte com GZIP;"
	echo "6) Descompacte com BZIP2;"
	echo "7) HASH de 256 com SHA;"
	echo "8) Checar o HASH DE 256 com SHA;"
	echo "9) Sair;"
	read MENU

[ $MENU == 1 ] && carquivo;
[ $MENU == 2 ] && darquivo;
[ $MENU == 3 ] && compactg;
[ $MENU == 4 ] && compactb;
[ $MENU == 5 ] && dcompactg;
[ $MENU == 6 ] && dcompactb;
[ $MENU == 7 ] && hashcomSHA;
[ $MENU == 8 ] && checkhash;

done
