!#/bin/bash
#nome: yuri venancio
USUARIO=yuri
SENHA=123
SAIR=nao 
while [$SAIR !=SAIR]; do 
clear
echo 
QNT=1

while (( $QNT <=  5  )); do 
	echo -n "login"
	read LOGIN
	echo -n "Password: '
	read -s PASSW
	echo
	if [ $LOGIN == $USUARIO ]; then
		if [$PASSW == $SENHA ]; then 
			SAIR=SAIR 
			QNT=5
			echo "PASSOU'
else 
	sleep 3
	echo
	echo "login incorreto"

fi 
let QNT=($QNT+1)
done
	
	done
MENU=1
while [ $MENU != 9 ]; do 
clear 
echo 

	echo "1) criar Arquivo"
	echo "2) apagar Arquivo"
	echo "3) compacte um GZIP"
	echo "4) compacte um BZIP2"
	echo "5) Descompacte GZIP"
	echo "6) Descompacte BZIP2"
	echo "7) crie um hash de 256 bits"
	echo "8) check SHA de 256"
	echo "9) sair"



[ $MENU == 1 ] && carquivo
[ $MENU == 2 ] && aarquivo 
[ $MENU == 3 ] && compg 
[ $MENU == 4 ] && compb  
[ $MENU == 5 ] && descg 
[ $MENU == 6 ] && descb 
[ $MENU == 7 ] && hash   
[ $MENU == 8 ] && chash
[ $MENU == 9 ] && sair 



carquivo (){
echo "Qual nome do arquivo que deseja criar?"
read ARQ
'rm $ARQ'
echo "Pressione ENTER para finalizar"
echo temp
}

aarqui(){
clear
echo "Qual nome do arquivo que deseja apagar ?" 
read ARQ
'rm $ARQ'
echo "pressione ENTER para Finalizar" 
echo temp
}

compg(){
clear
echo "Qual nome do arquivo que deseja compactar ?"
read comp
'gzip $comp'
echo "arquivo foi compactado"
echo "aperte enter pra sair"

descg (){
clear
echo "Qual nome do arquivo que deseja descompactar ?"
read desc
gunzip $desc
echo "o arquivo foi descomp"















done
