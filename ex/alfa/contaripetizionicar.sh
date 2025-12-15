#!/bin/bash

if (( $# != 1 ));
then
	echo "Il numero di argomenti deve essere esattamente 1"
	exit 1
fi

for (( i=0; i<${#1}; i++ ));
do
	echo ${1:$i:1}
done | sort | uniq -c 
