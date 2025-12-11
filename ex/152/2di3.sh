#!/bin/bash

FILE="/usr/include/stdio.h"
# FILE="./prova"

while read A B C;
do
    if [[ "$C" == "" ]];
    then
        continue
    fi 

    if (( ${#C} < 2 ));
    then
        continue    
    fi

    echo "${B:0:1}"
done < $FILE
