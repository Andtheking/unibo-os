#!/bin/bash

cat ./lista.txt | 
	grep -B 1 --no-group-separator "SISTEMI OPERATIVI" |
	while read A B; 
	do
		if [[ $A != "SISTEMI" ]]
		then
			echo $A
		fi
	done
