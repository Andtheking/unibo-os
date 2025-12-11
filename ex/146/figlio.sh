#!/bin/bash

echo PID: $$ NUMERO_FIGLIO: $i
if (( $i <= 10 ));
then
    (( i++ ))
    ./figlio.sh
fi 
    
