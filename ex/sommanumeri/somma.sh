#!/bin/bash

counter=1
sommaPari=0
sommaDispari=0
while read A;
do
    if (( counter%2 == 0 ));
    then
        (( sommaPari += $A ))
    else
        (( sommaDispari += $A ))
    fi  
    (( counter++ ))
done < ./numeri.txt

echo Somma pari: $sommaPari
echo Somma dispari: $sommaDispari
