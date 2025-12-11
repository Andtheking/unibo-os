#!/bin/bash
for i in /usr/include/*;
do
	if [[ $i -nt /usr/include/stdio.h && -r $i && -d $i ]];
	then
		echo $i
	fi
done
