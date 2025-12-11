#!/bin/bash

IFS=","
somma=0
while read A B C; 
do 
    echo $A,$C
    (( somma += $B ))
done < ./input1.txt

echo $somma
