#!/bin/bash
#Autor: Lucas Oliveira do Nascimento

USER=vagrant
PASS=vagrant
SAIR=0

while (( $SAIR == 0 )) ; do
	clear
	echo -n "jessie login: "
	read LOGIN
	echo
	echo -n "Password: "
	read -s PASSW

 	if [ $LOGIN == $USER ]; then
		if [ $PASSW == $PASS ] ; then
			SAIR=1	
		else
			clear

		fi
	fi
		 
clear
sleep 2


done

carq(){ 
	clear
	echo
	echo -n "Digite o nome do arquivo que deseja criar:"
	read ARQ
	`> $ARQ`
	echo "Comando executado"
	echo "Pressione [enter] para sair "
	read TMP
}

darq(){
	clear
	echo
	echo -n "Digite o nome do arquivo que deseja excluir:"
	read ARQ
	`rm -rf $ARQ`
	echo "Comando executado"
	echo "Pressione [enter] para sair"
	read TMP
}

compactg(){
	clear
	echo
	echo -n "Digite o nome do arquivo que deseja compactar (gzip):"
	read ARQ
	`gzip $ARQ`
	echo "Comando executado"
	echo "Pressione [enter] para sair"
	read TMP
}

compactb(){
	clear
	echo
	echo -n "Digite o nome do arquivo que deseja compactar (bzip2):"
	read ARQ
	`bzip2 $ARQ`
	echo "Comando executado"
	echo "Pressione [enter] para sair"
	read TMP
}

descompactg(){
	clear
	echo
	echo -n "Digite o nome do arquivo que deseja descompactar (gzip):"
	read ARQ
	`gunzip $ARQ`
	echo "Comando executado"
	echo "Pressione [enter] para sair"
	read TMP
}


descompactb(){
	clear
	echo
	echo -n "Digite o nome do arquivo que deseja descompactar (bzip2):"
	read ARQ
	`bunzip2 $ARQ`
	echo "Comando executado"
	echo "Pressione [enter] para sair"
	read TMP
}

hash(){
	clear
	echo "Digite o nome do arquivo que deseja fazer o HASH (SHA256)"
	echo
	read ARQ
	echo "Digite o nome do arquivo que deseja salvar o HASH "
	read ARQ2
	`echo $ARQ | sha256sun | cut -d ' ' -f1 > ARQ2
	echo "Pressione [enter] para sair"
	read TMP
}

hashb(){
	clear
	echo "Exercicio não concluido"
	echo
	echo "obs: Profº Thales GOSTOSO!!!!!"
	echo
	echo "Pressione [enter] para sair"
	read TMP
}  

MENU=0
while [ $MENU != 9 ] ; do
	clear
	echo "1) Crie Arquivo:"
	echo "2) Apague Arquivo"
	echo "3) Compacte com GZIP"
	echo "4) Compacte com BZIP2"
	echo "5) Descompacte com GZIP"
	echo "6) Descomapcte com BZIP2"
	echo "7) HASH de 256b com SHA"
	echo "8) Checar o HASH de 256b com SHA"
	echo "9) Sair"
	read MENU
	

[ $MENU == 1 ] && carq
[ $MENU == 2 ] && darq
[ $MENU == 3 ] && compactg
[ $MENU == 4 ] && compactb
[ $MENU == 5 ] && descompactg
[ $MENU == 6 ] && descompactb
[ $MENU == 7 ] && hash
[ $MENU == 8 ] && hashb
done
