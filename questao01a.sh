#!/bin/bash
## Resolucao da primeira prova de shell script de RC.
#
# Mateus-n00b, Setembro 2016
#
# Licensa GPL
#
#-=========================================================
tempo=$(bc <<< "scale=3;$1*8/$2")
echo "Total em m: $(bc <<< "scale=3;$tempo/60")"