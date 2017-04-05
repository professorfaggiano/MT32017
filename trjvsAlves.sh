!#/bin/bash
#AUTOR: João Vitor Sant'ana Alves
senha=fonfon
SAIR=nao

 while [ $SAIR != $SAIR ]; do
clear
echo
echo "Debian GNU/Linux 8 jessie tty1"
echo
QNT=1
 while ((QNT <= 5 )); do
echo -n "jessie login: "
read LOGIN
echo -n "Password: "
read -s PASSW
echo
	if [ $LOGIN == $USER ]; then
		if [ $PASSW == $SENHA ]; then
		 SAIR=SAIR
		 QNT=5
		 echo "Passou"
	else
		sleep 3
		echo
		echo "Falhou Usuario"
	fi
let QNT=($QNT+1)
 done
  done
carq (){
	clear
	echo
	echo -n "Qual o nome do arquivo que deseja criar? "
	read ARQ
	'> $ARQ'
	echo "Comando executado"
	echo "Pressione[enter] para concluir"
	read TEMP
 }

darq(){
	clear
	echo
	echo -n "Digite o nome do arquivo que deseja excluir. "
	read ARQ
	'rm -rf $ARQ'
	echo "Comando executado"
	echo "Pressione[enter] para concluir"
	read TEMP
 }

compact(){
	clear
	echo
	echo -n "Qual o nome do arquivo que deseja compactar? "
	read ARQ
	'gzip $ARQ'
	echo "Comando executado"
	echo "Pressione[enter] para concluir"
	read TEMP
 }

descompact(){
	clear
	echo
	echo -n "Digite o nome do arquivo que deseja descompactar. "
	read ARQ
	'gunzip $ARQ'
	echo "Comando executado"
	echo "Pressione[enter] para concluir"
	read TEMP
 }

MENU=1
 while [ $MENU != 9 ]; do
	clear
	echo "1) Criar arquivo;"
	echo "2) Apague arquivo; "
	echo "3) Compacte com GZIP; "
	echo "4) Compacte com BZIP2; "
	echo "5) Descompacte com GZIP; "
	echo "6) Descompacte com BZIP2; "
	echo "7) HASH de 256b com SHA; "
	echo "8) Checar o HASH de 256b com SHA; "
	echo "9) Sair; " 
	read MENU

[ $MENU == 1 ] && carq
[ $MENU == 2 ] && darq
[ $MENU == 3 ] && compac
[ $MENU == 4 ] && compacc
[ $MENU == 5 ] && descompact
[ $MENU == 6 ] && descompactt
[ $MENU == 7 ] && exer
[ $MENU == 8 ] && exerr
[ $MENU == 9 ] && sair

done

	
