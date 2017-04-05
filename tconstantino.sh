#!/bin/bash 
#AUTOR: Thiago Constantino 
USER=th
SENHA=123
SAIR=nao

while [ $SAIR != $SAIR]; do
clear 
echo 
echo "Debian GNU/linux jessie...
echo 
QNT=1
	while ((QNT <= 5 )); do
echo -n "login: "
read LOGIN	
echo -n "Password: "
read -s PASSW
echo

	if [$LOGIN == $USER]; then
		if [$PASSW == $SENHA]; then
		 SAIR=SAIR
		 QNT=5	
		 echo "Passou"

else
	
	echo "Login incorrect"
fi
else
echo "Usuario incorreto"
fi
	
	let QNT=($QNT+1)
done
done
	
	1 (){

	clear
	echo -n "QUAL ARQUIVO DESEJA CRIAR ?"
	read ARQ
	'> $ARQ'
	echo "Comando executado"
	echo "Aperte [enter] para voltar"
	read TEMP
}

	2 (){
	clear 
	echo -n "QUAL ARQUIVO DESEJA APAGAR ?"
	read ARQ
	'rm -rf  $ARQ'
	echo "Comando executado"
	echo "Aperte [enter] para voltar"
	read TEMP
}
	3 (){
	clear 
	echo -n "QUAL ARQUIVO DESEJA COMPACTAR ?"
	read COMP
	'gzip  $COMP'
	echo "Comando executado"
	echo "Aperte [enter] para voltar"
	read TEMP
}
	4 (){
	clear 
	echo -n "QUAL ARQUIVO DESEJA COMPACTAR ?"
	read COMP
	'bzip2  $COMP'
	echo "Comando executado"
	echo "Aperte [enter] para voltar"
	read TEMP
}
	5 (){
	clear 
	echo -n "QUAL ARQUIVO DESEJA DESCOMPACTAR ?"
	read COMP
	'gunzip $COMP
	echo "Comando executado"
	echo "Aperte [enter] para voltar"
	read TEMP
}	

	6 (){
	clear 
	echo -n "QUAL ARQUIVO DESEJA DESCOMPACTAR ?"
	read COMP
	'bunzip2 $COMP
	echo "Comando executado"
	echo "Aperte [enter] para voltar"
	read TEMP
}

	7 (){

	9 (){
	clear 
	echo "Saindo do programa"
}



MENU=1
	while [$MENU !=9 ]; do 


	echo "1) Crie arquivo"
	echo "2) Apague Arquivo"
	echo "3) Compacte com GZIP"
	echo "4) Compacte com BZIP2"
	echo "5) Descompacte com GZIP"
	echo "6) Descompacte com BZIP2"
	echo "7) HASH de 256b com SHA"
	echo "8) Checar o HASH de 256b com SHA"
	echo "9) Sair"

[ $MENU == 1 ] && 1
[ $MENU == 2 ] && 2
[ $MENU == 3 ] && 3
[ $MENU == 4 ] && 4
[ $MENU == 5 ] && 5
[ $MENU == 6 ] && 6
[ $MENU == 7 ] && 7
[ $MENU == 8 ] && 8
[ $MENU == 9 ] && 9

done
