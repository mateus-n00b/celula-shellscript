#!/bin/bash
# Script para configurar arquivo /etc/resolv.conf
#
# Mateus-n00b,Outubro 2016
#
# -==============================

if [ $# -eq 0 ]
then
    echo "Usage: $0 <opt1> <opt2> ... <optn>"
    exit 2
fi

FILE="host.db"

while getopts "a: i: d: l r:" var
do
        case "$var" in
            "a")   echo -n "$OPTARG " >> $FILE
            ;;
            "d")
                grep -v "$OPTARG" "$FILE" > /tmp/temp
                mv /tmp/temp $FILE
            ;;
            "l")
                cat "$FILE"
            ;;
            "r")
                grep "$OPTARG" "$FILE"
            ;;
            "i") echo -ne "$OPTARG\n" >> $FILE

            ;;
            *)

            ;;
        esac
done
