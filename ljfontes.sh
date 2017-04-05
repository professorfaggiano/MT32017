!/bin/bash
#Autor: Luana Jesus de Fontes

clear


usuario=123
senha=123
sair=n

	while [ $sair != $sair ]; do
clear
echo 
echo 
qnt=1
	while ((qnt <= 5 )); do
echo -n "jessie login:"
read login
echo -n "password:"
read password:"
read -s password:"
echo

	if [ $login == $usuario ]; then
		if [ $password == $senha ]; then
		sai=sair
		qnt=5
		echo "passou"
	else
		sleep 3
		echo
		echo" login incorrect"
		fi
	else
		sleep
		echo
		echo "falhou usuario"
	fi
let qnt=($qnt+1)
	done
	done

carquivo(){
	clear 
	echo
	echo -n "qual o nome do arquivo q deseja criar? "
	read arquivo
echo " comando executado com sucesso"
echo " [enter] para finalizar"
read temp
}

darquivo(){
clear
echo
echo -n "qual o nome do arquivo que deseja deletar?"
read arq
'rm -rf $arq'
echo "sucesso"
echo "[enter] para finalizar
read tmp
}

compact(){
clear
echo 
echo -n "qual arquivo deseja compactar?"
read arq
'gzip $arq'
echo "sucesso"
echo "[enter] para finalizar"
read temp
}

compact2(){
clear
echo
echo -n " qual arquivo quer compacta?"
read arq
'bzip2 $arq'
echo "sucesso"
echo "[enter] para finalizar"
read temp
}

descompact(){
clear
echo
echo -n "qual aquivo quer descompactar?"
read arq
'gzip $arq'
echo "sucesso"
echo "[enter] para finalizar
read temp
}
descompact2(){
clear
echo
echo -n "qual arquivo quer descompactar?"
read arq
'bzip2 $arq'
echo "sucesso"
echo "[enter] para finalizar"
read temp
}

menu=1
	while [ $menu != 9 ]; do
clear
echo "1) Crie arquivo"
echo "2) apague arquivo"
echo "3) compacte com gzip"
echo "4) compacte com bzip2"
echo "5) descompacte com gzip"
echo "6) descompacte com bzip2"
echo "7) hash de 256b com sha"
echo "8) checar o hash dde 256b com sha"
echo "9) sair"
read menu

[ $menu == 1 ] && carquivo
[ $menu == 2 ] && darquivo
[ $menu == 3 ] && compact
[ $menu == 4 ] && compact2
[ $menu == 5 ] && descompact2
[ $menu == 6 ] && descompact2
done
