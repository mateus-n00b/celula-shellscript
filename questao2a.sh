#!/bin/bash
# 
#
#
#
#
#-================================================

echo "Str1: $1"
echo "Str2: $2"
echo "Tam de \"$1\": ${#1}"
echo "Tam de \"$2\": ${#2}"

if [ ${#1} = ${#2} ]
then
    echo "Possuem tamanhos iguais"
else
    echo "Possuem tamanhos diferentes."
fi

if [ "$1" = "$2" ]
then    
    echo "São iguais."
else    
    echo "São diferentes."
fi
