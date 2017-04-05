!#/bin/bash
#Autor:Marcos Vinicius Moura Gomes



USUARIO=marcos
SENHA=fon
SAIR=nao

while [ $SAIR != SAIR ]; do
 clear
 echo
 echo Debian GNU/Linux 8 jessie tty1
 echo
 QNT=1
 while (( $QNT <= 5 )); do
 echo -n "jessie login: "
 read LOGIN
 echo -n "Password: "
 read -s PASSW
 echo
	if [ $LOGIN == $USUARIO ]; then
	  if [ $PASSW == $SENHA ]; then
		SAIR=SAIR
		QNT=5
		echo "Voce Passou!"
else
		sleep 3
		echo
		echo "Login incorrect"
	  fi
else
		sleep 3
		echo
		echo "Login incorrect"
	fi
	let QNT=($QNT+1)
 done
done

carquivo(){
clear
echo "Qual o nome do Arquivo que deseja Criar?"
read ARQ 
`> $ARQ`
 echo "Pressione [enter] para finalizar"
 echo temp
}

aarquivo(){
clear
echo "Qual é o nome do aquivo que voce ira apaguar? "
read ARQ
`rm $ARQ`
echo "Pressione [ENTER] para finalizar"
echo temp
}

comGZ(){ 
clear
echo "Qual arquivo deseja compactar? "
read COMPA
`gzip $COMPA`
echo "O Arquivo que voce desejava foi compactado"
echo "Pressione [ENTER] para finalizar"
read temp
}

comBZ(){ 
clear
echo "Qual arquivo deseja compactar? "
read COMPA
`bzip2 $COMPA`
echo "O Arquivo que voce desejava foi compactado"
echo "Pressione [ENTER] para finalizar"
read temp
}

desGZ(){
clear
echo "Qual arquivo deseja descompactar? "
read DESC
`gunzip $DESC`
echo "O Arquivo que voce desejava foi Descompactado"
echo "Pressione [ENTER] para finalizar"
echo temp
} 

desBZ2(){
clear
echo "Qual arquivo deseja descompactar? "
read DESC
`bunzip2 $DESC`
echo "O Arquivo que voce desejava foi Descompactado"
echo "Pressione [ENTER] para finalizar"
echo temp
} 


MENU=1
while [ $MENU != 9 ]; do
clear
echo
	echo "1) Crie Arquivo"
	echo "2) Apague Arquivo"
	echo "3) Compacte com GZIP"
	echo "4) Compacte com BZIP2"	
	echo "5) Descompacte com GZIP"
	echo "6) Descompacte com BZIP2"
	echo "7) HASH de 256 com SHA"
	echo "8) Checar o HASH de 256b com SHA"
	echo "9) Sair"
read MENU

	[ $MENU == 1 ] && carquivo
	[ $MENU == 2 ] && aarquivo
	[ $MENU == 3 ] && comGZ
	[ $MENU == 4 ] && comBZ2
	[ $MENU == 5 ] && desGZ
	[ $MENU == 6 ] && desBZ2
	[ $MENU == 7 ] && Ha256b
	[ $MENU == 8 ] && CheqHa256b
done
