#!/bin/bash
#Autor:Rafael Alves Silva

user=prova
senha=thales
sair=nao

while [ $sair != $sair ]; do
clear
echo
qnt=1
echo -n "jessie login: "
read login
echo -n "password: "
read -s passw
echo

	if [ $login == $user ]; then
	if [ $passw == $senha ]; then 
	sair=sair
else	
	sleep 3	
	echo 
	echo "Falhou Usuario"
fi
fi
let qnt=($qnt+1)
done
done

carq(){
	clear
	echo
	echo -n "Digite o nome do arquivo que voce deseja criar?"
	read arq
	'> $arq'
	echo "Arquivo Criado"
	echo "Pressione [enter] para sair"
	read tmp
}


darq(){
	clear
	echo
	echo -n "Digite o nome do arquivo que voce deseja criar?"
	read arq
	'rm -rf  $arq'
	echo "Arquivo Deletado"
	echo "Pressione [enter] para sair"
	read tmp
}

ccompacG(){
	clear
	echo
	echo -n "Digite o nome do arquivo que voce deseja Compactar?"
	read arq
	'gzip $arq'
	echo "Arquivo Comapactado"
	echo "Pressione [enter] para sair"
	read tmp
}


ccompacB(){
	clear
	echo
	echo -n "Digite o nome do arquivo que voce deseja Compactar?"
	read arq
	'bzip $arq'
	echo "Arquivo Comapactado"
	echo "Pressione [enter] para sair"
	read tmp
}

descompacG(){
	clear
	echo
	echo -n "Digite o nome do arquivo que voce deseja Descompactar?"
	read arq
	'gunzip  $arq'
	echo "Arquivo Descompactado"
	echo "Pressione [enter] para sair"
	read tmp
}

descompacB(){
	clear
	echo
	echo -n "Digite o nome do arquivo que voce deseja Descompactar?"
	read arq
	'bunzip  $arq'
	echo "Arquivo Descompactado"
	echo "Pressione [enter] para sair"
	read tmp

HASH(){
	clear
	echo
	echo -n "Digite o nome do arquivo que voce deseja usar o HASH?"
	read arq
	'sha256sum $arq'
	echo "Arquivo Deletado
	echo "Pressione [enter] para sair"
	read tmp
}

ChecarHASH(){
	clear
	echo
	echo -n "Digite o nome do arquivo que voce deseja Checar HASH?"
	read arq
	'shadown $arq'
	echo "Arquivo Deletado
	echo "Pressione [enter] para sair"
	read tmp





menu=1
while [ $menu !=9 ]; do

clear
echo "1) Criar um arquivo"
echo "2) Apagar um arquivo"
echo "3) Compacte um arquivo com GZIP"
echo "4) Compacte um arquivo com BZIP"
echo "5) Descompacte um arquivo GZIP"
echo "6) Descompacte um arquivo BZIP"
echo "7) HASH de 256 bits com SHA"
echo "8) Chegar o HASH de 256 bits com SHA"
echo "9) Sair"
read menu

[ $menu == 1 ] && carquivo
[ $menu == 2 ] && darquivo
[ $menu == 3 ] && compacG
[ $menu == 4 ] && compacB
[ $menu == 5 ] && descompacG
[ $menu == 6 ] && descompacB
[ $menu == 7 ] && HASH
[ $menu == 8 ] && checarHASH

done

