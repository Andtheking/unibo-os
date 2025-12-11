#!/bin/bash

counter=0
while read A; 
do
    if (( $counter % 2 == 0 ));
    then
        echo $A
    fi
    (( counter++ ))
done
