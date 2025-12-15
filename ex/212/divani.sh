#!/bin/bash

if (( $# != 2 )) ; then 
	echo "errore: servono 2 argomenti: larghezza_minima  altezza_massima"
	exit 1
fi

LARGMIN=$1
ALTMAX=$2

# ORA nelle due variabili ci sono i parametri
# passati a riga di comando.
# Da qui in poi aggiungete quello che serve.
# Leggete il contenuto del file ./divani.txt
# ed usatelo opportunamente.
FILE="./divani.txt"

while read A B C D;
do
	if (( $B >= $LARGMIN ));
	then
		if (( $C <= $ALTMAX ));
		then
			echo $A $B $C $D
		fi
	fi
done < $FILE

