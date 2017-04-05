#!/bin/bash
#Autor: Gabriel



USER=gabriel
SENHA=7575
SAIR=nao

 while [ $SAIR != $SAIR ]; do
clear
echo
echo "Debian GNU/linux 8 jessie tty1"
echo
QNT=1
  while ((QNT <= 5 )); do
echo -n "jessie Login: "
read LOGIN
echo -n "Password: "
read -s PASSW
echo
	if [ $LOGIN == $USER ]; then 
		if [ $PASSW == $SENHA ]; then
		SAIR=SAIR
		QNt=5
		echo "Passou!"
	else
		sleep 3
		echo
		echo "Login incorrect"
		fi
	else
		sleep 3
		echo
		echo "Falhou Usuario"
	fi
let QNT=($QNT+1)
 done
  done

Carq (){
	clear
	echo -n "Qual nome do arquivo que voce deseja criar? "
	read ARQ
	'> $ARQ'
	echo "Comando executado"
	echo "Pressione [Enter] para voltar no menu"
	read TEMP
}	

Darq (){
	clear 
	echo -n "Qual o nome do arquivo que voce deseja apagar? "
	read ARQ
	' rm -f $ARQ'
	echo "Comando executado"
	echo "Pressione [Enter] para voltar no menu"
	read TEMP
	
}

Garq (){
	clear
	echo "Digite o nome do arquivo que deseja compactar com GZIP: "
	read ARQ
	'gzip $ARQ'
	echo "Comando Executado"
	echo "Pressione [Enter] para voltar no menu"
	read TEMP 
}

Barq (){
	clear
	echo "Digite o nome do arquivo que deseja compactar com BZIP2"
	read ARQ
	'bzip2 $ARQ'
	echo "Comando executado"
	echo "Pressione [Enter] para voltar no menu"
	read TEMP
}

Dgarq (){
	clear
	echo "Qual o nome do arquivo GZIP que deseja descompactar? "
	read ARQ
	'gunzip $ARQ'
	echo "Comando Executado"
	echo "Pressione [Enter] para voltar no menu"
	read TEMP
}

Dbarq (){
	clear
	echo "Qual o nome do arquivo BZIP2 que deseja descompactar? "
	read ARQ
	'bunzip2 $ARQ'
	echo "Comando Executado"
	echo "Pressione [Enter] para voltar no menu"
	read TEMP		
}

Hash (){
	clear

	echo "Pressione [Enter] para voltar no menu"
	read TEMP
}

Chash (){
	clear

	echo "Comando executado"
	echo "Pressione [Enter] para voltar no menu"
	read TEMP
}

MENU=1
 while [ $MENU != 9 ]; do
	clear
	echo "1) Criar um arquivo"
	echo "2) Apague um arquivoi"
	echo "3) Compacte um arquivo com GZIP"
	echo "4) Compacte um arquivo com BZIP2"
	echo "5) Descompacte um arquivo GZIP"
	echo "6) Descompacte um arquivo BZIp2"
	echo "7) Hash de 256b com SHA"
	echo "8) Checar o Hash de 256b com SHA"
	echo "9) Sair"
	read MENU

[ $MENU == 1 ] && Carq
[ $MENU == 2 ] && Darq
[ $MENU == 3 ] && Garq
[ $MENU == 4 ] && Barq
[ $MENU == 5 ] && Dgarq
[ $MENU == 6 ] && Dbarq
[ $MENU == 7 ] && Hash
[ $MENU == 8 ] && Chash

done
