#!/bin/bash
#Autor: Lucas Rinaldin

USER=root
SENHA=123
SAIR=nao

while [ $SAIR != $SAIR ]; do
clear
echo
echo "Debian GNU/Linux 8 jessie tty1"
echo
QNT=1
while (( QNT <= 5 )); do 
echo -n "jessie login"
read LOGIN
echo -n "Password:"
read -s PASSW
echo	
	if [ $LOGIN == $USER ]; then
	if [ $PASSW == $SENHA ]; then
	SAIR=SAIR
	QNT=5
	else
	sleep 3
	echo
	echo "Login incorrect"
	fi
	else
	sleep 3
	echo
	echo "Falhou usuário"
	fi
let QNT=($QNT+1)
done 
done

carq (){
clear
echo
echo -n "Digite o nome do arquivo que deseja criar:"
read ARQ
'> $ARQ"
echo "Comando executado"
echo "Pressione [enter] para finalizar"
read TEMP
}

darq(){
clar echo
echo -n "Digite o nome do arquivo que quer excluir:"
read ARQ
'rm -rf $ARQ'
echo "Comando executado"
echo "Pressione [enter] para finalizar"
read TEMP
}

compact(){
clear
echo 
echo -n "Digite o nome do arquivo que deseja compactar:"
read ARQ
'gzip $ARQ"
echo "Comando executado"
echo "Pressione [enter] para finalizar"
read TEMP
}

compactb(){
clear
echo -n "Digite o nome do arquivo que deseja compactar:"
read ARQ
'bzip2 $ARQ'
echo "Comando executado"
echo "Pressione [enter] para finalizar"
read TEMP
}

descompact (){
clear
echo
echo -n  "Digite o nome do arquivo que deseja descompactar?"
read ARQ
'gunzip $ARQ'
echo "Comando executado"
echo "Pressione [enter] para finalizar"
read TEMP
}

incompleta (){
echo "Não consegui fazer essa tenha misericódia no coração na hora de dar a nota"
echo "Pressione [enter] para finalizar"
}

MENU=1
while [ $MENU !=9 ]; do
clear
echo "1 Crie arquivo"
echo "2 Apague arquivo"
echo "3 Compacte com GZIP"
echo "4 Compacte com BZIP2"
echo "5 Descompacte com GZIP"
echo "6 Descompacte com BZIP2"
echo "7 HASH de 256b com SHA"
echo "8 checar o HASH de 256b com SHA"
echo "9 Sair" 
read MENU

[ &MENU == 1 ] && carq
[ &MENU == 2 ] && darq
[ &MENU == 3 ] && compact
[ &MENU == 4 ] && compactb
[ &MENU == 5 ] && descompact
[ &MENU == 6 ] && incompleta
[ &MENU == 7 ] && incompleta
[ &MENU == 8 ] && incompleta

done
