#!/bin/bash
#
#
#
#
#--================================================

cd "$1"
for x in *
do
    if [ -f "$x" ]
    then
        Mdate=$(stat -c %y "$x" | awk '{print $1}' | sed 's/-//g' )
        Mtime=$( stat -c %y "$x" | cut -f2 -d" "| sed 's/\..*//' | sed 's/://g')        

        if [ $Mdate -gt $(sed 's/-//g' <<< "$3") ]
        then                
            cp "$x" "$2"
            echo "Coping $PWD/$x to $2..."
        elif [ $Mdate -eq $(sed 's/-//g' <<< "$3") -a $Mtime -gt $(sed 's/://g' <<< "$4") ]
        then            
            cp "$x" "$2"
            echo "Coping $PWD/$x to $2..."
        else
            echo "$x not modified!"
        fi                    
    fi
done