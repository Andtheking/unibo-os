#!/bin/bash

IFS="	"
while read A B C D;
do
    echo $C
done < ./cadutevic.txt
