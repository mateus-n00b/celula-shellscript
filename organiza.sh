#!/bin/bash
# Programa para a organizacao de arquivos de mail.log
# 
# Mateus-n00b, Setembro 2016
#
# Versao 1.0
#
# Licenca GPL
# -================================================

# Itero por todos os aquivo mail.log
for x in *.log*
do
    echo "Lendo arquivo $x..."
    # Leio cada linha
    while read row
    do
        # Pego o dia e o mes de cada linha
        dia=$(cut -d" " -f 2 <<< $row)
        mes=$(cut -d" " -f 1 <<< $row)
        #echo $dia       
        # Jogo a linha no arquivo correto
       echo "$row" >> "mail_${dia}_$mes.log"        
    done < "$x" 
done