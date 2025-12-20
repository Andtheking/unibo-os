#!/bin/bash 

FILE=$1

lines=$(cat $FILE | wc -l)

for (( i=$lines; i > 0; i-- ));
do
	cat $FILE | tail -n+$i | head -n 1
done
