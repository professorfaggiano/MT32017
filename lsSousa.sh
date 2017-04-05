#!/bin/bash
# Autor: Lucas Sousa Silva 
# Data de modificação: 05/04/2017

user=lucas
senha=132



clear
echo
echo
echo -n "Digite o Login: "
read login
echo -n "Digite a Senha: "
read -s passw
echo
     if [ $login == $user ]; then
		if [ $passw == $senha ]; then 
		sair=sair

		fi
     fi


cusuario(){
       clear
       echo -n "Qual o nome do arquivo que voce deseja criar ? "
	read arq
	`> $arq`
	echo "Comando executado"
	echo "Precione [enter] para voltar ao menu"
        read jjhjh
}

apusu(){
       clear
       echo -n "Qual o nome do usuario que voce deseja criar ? "
	read arq
	`rm -rf $arq`
	echo "Comando executado"
	echo "Precione [enter] para voltar ao menu"
        read jjhjh
}


gzip(){
       clear

       echo -n "Qual o nome do arquivo que voce deseja criar ? "
	read arq
	`> $arq`
	echo "digite o arquivo a ser compactado
	read arq
	`gzip $arq`
	echo "Comando executado"
	echo "Precione [enter] para voltar ao menu"
        read jjhjh
}


bzip(){
       clear
       echo -n "Qual o nome do arquivo que você deseja compactar ?  "
	read arq
	`bzip $arq`
	echo "Comando executado"
	echo "Precione [enter] para voltar ao menu"
        read jjhjh
}
	
	

desgzip(){
       clear
       echo -n "Qual o nome do arquivo que deseja descompactar ? "
	read arq
	`gunzip $arq`
	echo "Comando executado"
	echo "Precione [enter] para voltar ao menu"
        read jjhjh
}
       
   
desbzip(){
       clear
       echo -n "Qual o nome do arquivo que deseja descompactar "
	read arq
	`bunzip $arq`
	echo "Comando executado"
	echo "Precione [enter] para voltar ao menu"
        read jjhjh
}


hash(){
clear
read rfhu

}


chash(){
clear
read uehfuf
        
}

menu=1
 while [ $menu != 9 ]; do
	clear
	echo "1) Criar um arquivo"
	echo "2) Apague um arquivo"
	echo "3) Compacte um arquivo GZIP "
	echo "4) Compacte um arquivo BZIP "
	echo "5) Descompacte um Arquivo GZIP"
	echo "6) Descompacte um Arquivo BZIP"
	echo "7) HASH de 256b com SHA"
	echo "8) Checar o HASH de 256b com SHA"
	echo "9) Sair"
	read menu


[ $menu == 1 ] && cusuario
[ $menu == 2 ] && apusu
[ $menu == 3 ] && gzip
[ $menu == 4 ] && bzip
[ $menu == 5 ] && desgzip
[ $menu == 6 ] && desbzib
[ $menu == 7 ] && hash
[ $menu == 8 ] && chash

done
