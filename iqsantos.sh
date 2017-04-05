#!/bin/bash
#Autor: Icaro Queiroz
#Data de modificaçao: 05/04/2017 11:18
#Contato: icaroqueiroz2000@gmail.com

USER=josias
SENHA=1233
loop=nao

 while [ $SAIR != $SAIR ]; do
clear
echo
echo
echo -n "Login: "
read LOGIN
echo -n "Senha: "
read -s PASSW
echo
	if [ $LOGIN == $USER ]; then
		if [ $PASSW == $SENHA ]; then
		 SAIR=SAIR
		fi
	fi
  done

carquivo (){
	clear
	echo
	echo -n "Digite o nome do arquivo: "
	read ARQ
	`> $ARQ`
	echo "Feito"
	echo "[enter] para voltar ao menu"
	read temp
}
darquivo (){
	clear
	echo
	echo -n "Digite o nome do arquivo q deseja excluir: "
	read ARQ
	`rm -rf $ARQ`
	echo "Feito"
	echo "[enter] para voltar ao menu"
	read temp
}
cgzip (){
	clear
	echo
	echo -n "Digite o nome do arquivo a ser compactado:"
	read ARQ
	`gzip $ARQ`
	echo "Feito"
	echo "[enter] para voltar ao menu"
	read temp
}
cbzip (){
	clear
	echo
	echo -n "Digite o nome do arquivo a ser compactado:"
	read ARQ
	`bzip2 $ARQ`
	echo "Feito"
	echo "[enter] para voltar ao menu"
	read temp
}
dgzip (){
	clear
	echo
	echo -n "Digite o nome do arquivo a ser descompactado: "
	read ARQ
	`gunzip $ARQ`
	echo "Feito"
	echo "[enter] para voltar ao menu"
	read temp
}
dbzip (){
	clear
	echo
	echo -n "Digite o nome do arquivo a ser descompactado: "
	read ARQ
	`bunzip2 $ARQ`
	echo "Feito"
	echo "[enter] para voltar ao menu"
	read temp
}
chash (){
	clear
	echo 
	echo "Nao consegui fazer esta tarefa"
	read temp
}
vhash (){
	clear
	echo
	echo "Nao consegui fazer esta tarefa"
	read temp
}
	
MENU=1
	while [ $MENU != 9 ]; do
	clear
	echo "1) Criar arquivo;"
	echo "2) Apagar arquivo;"
	echo "3) Compactar em GZIP;"
	echo "4) Compactar em BZIP2;"
	echo "5) Descompactar em GZIP;"
	echo "6) Descompactar em BZIP2;"
	echo "7) Criar HASH;"
	echo "8) Checar HASH;"
	echo "9) Sair"
	read MENU

[ $MENU == 1 ] && carquivo
[ $MENU == 2 ] && darquivo
[ $MENU == 3 ] && cgzip
[ $MENU == 4 ] && cbzip
[ $MENU == 5 ] && dgzip
[ $MENU == 6 ] && dbzip
[ $MENU == 7 ] && chash
[ $MENU == 8 ] && vhash
 	done
