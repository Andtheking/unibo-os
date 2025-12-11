#!/bin/bash

FILE=./cadutevic.txt
TEMP_FILE=./.contaCaduteTemp.txt

if [[ -f $TEMP_FILE ]];
then
    rm $TEMP_FILE
fi 
touch $TEMP_FILE

while read A B C D; 
do
    echo $C >> $TEMP_FILE
done < $FILE

uniq -c $TEMP_FILE
