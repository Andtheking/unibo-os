#!/bin/bash

if (( $# != 1 ));
then
	echo "Devi scrivere 1 solo argomento!!"
	exit 1
fi

cat $1 | ./stampaRic.sh
