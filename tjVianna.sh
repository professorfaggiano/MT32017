#!/bin/bash
# autor= Joao

USER=Vianna
SENHA=fon
SAIR=nao

clear
echo
echo "Debian GNU/Linux 8 jessie tty1"
echo
QNT=1
  while (( $QNT <= 5 )); do
echo -n "jessie login: "
read login
echo -n "Password: "
read -s PASSW
echo
	if [ $login == $USER ]; then
		if [ $PASSW == $SENHA ]; then
		 SAIR=SAIR
		 QNT=5
		 echo "A entrada ao usuario foi permitida"
	else
		sleep 3
		echo
		echo "Login incorreto"
		fi
	else
		sleep 3
		echo
		echo "Falha ao usuario"
	fi
let QNT=($QNT+1)
 done


carquivo(){
	clear
	echo -n "Qual o nome do arquivo que voce deseja criar? "
	read arquivo
	'arquivoadd $arquivo'
	echo "Arquivo criado"
	echo "Pressione [enter] para voltar ao menu"
	read temp
}

aarquivo(){
	clear
	echo -n "Qual o nome do arquivo que deseja apagar? "
	read arquivo
	'arquivodel $arquivo'
	echo "Arquivo deletado"
	echo "Pressione [ enter ] para finalizar"
	read temp
}

compact(){
	clear
	echo
	echo -n "digite o nome do arquivo que deseja compactar? "
	read arquivo
	'gzip $arquivo'
	echo "Comando executado"
	echo "Pressione [ enter ] para finalizar"
	read temp
}

compact(){
	clear
	echo
	echo -n "Digite um numero do arquivo que deseja compactar? "
	read arquivo
	'bzip2 $arquivo'
	echo "comando executado"
	echo "Pressione [ enter ] para finalizar"
	read temp

}
descompact(){
	clear
	echo
	echo -n "digite o nome do arquivo que deseja descompactar"
	read arquivo
	'gunzip $arquivo'
	echo "comando executado"
	echo "Pressione [ enter ] para finalizar
	read temp
}

descompact(){
	clear
	echo
	echo -n "digite o nome do arquivo que deseja descompactar? "
	read arquivo
	'bunzip2 $arquivo'
	echo "comando executado"
	echo "Pressione [ enter ] para finalizar"
	read temp
}

menu=1
 while [ $menu != 9 ]; do
	clear
	echo "1) criar arquivo;"
	echo "2) apagar arquivo;"
	echo "3) compactar um arquivo com GZIP"
	echo "4) compactar um arquivo com BZIP2"
	echo "5) descompacte um arquivo GZIP"
	echo "6) descompacte um arquivo BZIP2"
	echo "7) HASH  de 256 bits com SHA"
	echo "8) checar o HASH  de 256 bits com SHA"
	echo "9) sair"
 
[ $menu == 1 ] && carquivo
[ $menu == 2 ] && aarquivo
[ $

