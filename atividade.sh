#!/bin/bash
# Dado um diretorio com arquivos .xx string 
# 
#
#
# -------------------------------------------
for x in *.sh 
do 
    if grep "mateus" "$x" &> /dev/null
    then
        echo "Aqui -> $x"
    fi
done
