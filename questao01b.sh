#!/bin/bash
# Resolucao da primeira prova de shell script de RC.
#
# Mateus-n00b, Setembro 2016
#
# Licenca GPL
#
#-============================================================

#interfaces=$(ip addr | awk -F': ' '{print $2}')
subnet=$(ip addr | grep 'inet ' | awk '{print $2}')
for x in ${subnet[@]}
do    
    echo "Analisando rede: $x..."
    for i in {70..80}
    do        
        ip=$(cut -f1-3 -d. <<< $x)        
        if ping -W 1 -c 2 "$ip.$i" &> /dev/null
        then
            echo "${ip}.$i ativo"
        fi            
    done
done