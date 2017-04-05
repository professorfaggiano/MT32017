#!/bin/bash
#Autor: Yago Marques dos Santos

clear
user=root
senha=root
opc=0
c=1

carq(){
 echo
 echo "Qual o nome do arquivo a ser criado?"
 read arq
 touch $arq
 echo
clear
 echo "O arquivo > $arq < foi criado com SUCESSO!"
echo
echo "Aqui esta os arquivos do diretorio atual: "
ls
echo
echo "Para voltar ao menu tecle [ENTER]"
read a
clear
}

darq(){
 echo 
 echo "Qual o nome do arquivo q deseja apagar?"
 read arq
 rm $arq
clear
 echo
 echo "O arquivo > $arq < foi apagado com SUCESSO!"
 echo
 echo "Aqui esta os arquivos do diretorio atual:"
ls
echo
echo "Para voltar ao menu tecle [ENTER]"
read a
clear
}

cgzip(){
 echo 
 echo "Qual o nome do arquivo q deseja compactar com GZIP?"
 read arq
 gzip $arq
clear
 echo
 echo "O arquivo > $arq < foi compactado com SUCESSO!"
 echo
 echo "Aqui esta os arquivos do diretorio atual:"
ls
echo
echo "Para voltar ao menu tecle [ENTER]"
read a
clear
}

cbzip(){
 echo 
 echo "Qual o nome do arquivo q deseja compactar com BZIP2?"
 read arq
 bzip2 $arq
clear
 echo
 echo "O arquivo > $arq < foi compactado com SUCESSO!"
 echo
 echo "Aqui esta os arquivos do diretorio atual:"
ls
echo
echo "Para voltar ao menu tecle [ENTER]"
read a
clear
}

dgzip(){
 echo 
 echo "Qual o nome do arquivo q deseja descompactar com GZIP?"
 read arq
 gunzip $arq
clear
 echo
 echo "O arquivo > $arq < foi descompactado com SUCESSO!"
 echo
 echo "Aqui esta os arquivos do diretorio atual:"
ls
echo
echo "Para voltar ao menu tecle [ENTER]"
read a
clear
}

dbzip(){
 echo 
 echo "Qual o nome do arquivo q deseja descompactar com BZIP2?"
 read arq
 bunzip2 $arq
clear
 echo
 echo "O arquivo > $arq < foi descompactado com SUCESSO!"
 echo
 echo "Aqui esta os arquivos do diretorio atual:"
ls
echo
echo "Para voltar ao menu tecle [ENTER]"
read a
clear
}

echo -n "vagrant login: "
read usu
echo -n "password: "
read -s sen

while (( $c != 1 )); do
 if (( $usu == $user )); then
 if (( $sen == $senha )); then
fi
fi
done

while (( $opc != 9 )); do
 echo
	echo " MENU: "
	echo
	echo " 1 - Criar arquivo "
	echo " 2 - Apagar arquivo "
	echo " 3 - Compactar arquivo (GZIP) "
	echo " 4 - Compactar arquivo (BZIP2) "
	echo " 5 - Descompactar arquivo (GZIP) "
	echo " 6 - Descompactar arquivo (BZIP2) "
	echo " 7 - Criar HASH 256b com SHA "
	echo " 8 - Checar o HASH 256b com SHA "
	echo " 9 - SAIR "
echo
echo "Digite uma opcao do MENU: "  
read opc

 (( $opc == 1 )) && carq
 (( $opc == 2 )) && darq
 (( $opc == 3 )) && cgzip
 (( $opc == 4 )) && cbzip
 (( $opc == 5 )) && dgzip
 (( $opc == 6 )) && dbzip

done

clear


