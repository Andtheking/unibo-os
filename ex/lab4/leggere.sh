#!/bin/bash

# Il < è il ridirezionamento dello stdin 
# 
exec {FD}< /usr/include/stdio.h


if (( $? == 0 )); 
then
    while read -u ${FD} A B C D ; 
    do 
        echo "${C}"
    done
    exec {FD}>&-
fi
    
