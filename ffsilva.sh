#!/bin/bash
Autor: Fernanda Ferreira


USER=fernanda
SENHA=123
SAIR=NAO
MENU=1

while [ $SAIR != $SAIR ]; do
clear
echo
echo "Debian GNU/Linux 8 jessie tty1"
echo

QNT=1
while (( QNT <= 1 )); do
echo -n "jessie login: "
read LOGIN
echo -n "Password: "
read PASSW
echo
	if [ $LOGIN == $USER ]; then
		if [ $PASSW == $SENHA ]; then
		 SAIR=SAIR
		 QNT=1
	else 
		 sleep 3
	 	 echo
		 echo "Login incorrect"
	         echo "Falou usuario"
		fi
let QNT=($QNT+1)
done
done

carquivo(){
	clear
	echo
	echo "Digite o nome do arquivo que voce deseja criar: "
	read ARQ
	`> $ARQ`
	echo "Arquivo criado"
	echo "Pressione [enter] para finalizar"
	read TEMP
}

aarquivo(){
	clear
	echo "Qual arquivo voce deseja apagar? "
	read ARQ
	`rm $ARQ`
	echo "Arquivo apagado"
	echo "Pressione [enter] para finalizar"
	read TEMP
}

compaczip(){
	clear
	echo
	echo "Digite o arquivo que voce deseja compactar: "
	read ARQ
	`gzip $ARQ`
	echo "Arquivo compactado"
	echo "Pressione [enter] para finalizar"
	read TEMP
}

compaczip2(){
	clear
	echo "Digite o nome do arquivo que voce quer compactar: "
	read ARQ
	`gzip2 $ARQ`
	echo "O arquivo foi compactado"
	echo "Pressione [enter para finalizar"
	read TEMP
}

descompzip(){
	clear
	echo
	echo "Digite o arquivo que voce deseja descompactar: "
	read ARQ
	`gunzip $ARQ`
	echo "Arquivo descompactado"
	echo "Pressione [enter] para finalizar"
	read TEMP
}
	
descompzi2(){
	clear
	echo
	echo "Qual arquivo voce quer descompactar: "
	read ARQ
	`gunzip2 $ARQ`
	echo "Arquivo descompactado"









MENU=1
while [ $MENU != 9 ]; do
	echo "1)Criar arquivo;"
	echo "2)Apagar arquivo;"
	echo "3)Compacte arquivo com GZIP;"
	echo "4)Compacte arquivo com BZIP2;"
	echo "5)Descompacte arquivo com GZIP;"
	echo "6)Descompacte arquivo com BZIP2i;"
	echo "7)HASH de 256b com SHA;"
	echo "8)Checar HASH de 256b com SHA;"
	echo "9)Sair"

[ $MENU == 1 ] && carquivo
[ $MENU == 2 ] && aarquivo
[ $MENU == 3 ] && compaczip
[ $MENU == 4 ] && compaczip2
[ $MENU == 5 ] && descompzip
[ $MENU == 6 ] && descompzip2
[ $MENU == 7 ] && hashsha
[ $MENU == 8 ] && chechash
done
