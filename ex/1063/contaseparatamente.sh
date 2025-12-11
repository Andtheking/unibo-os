#!/bin/bash

if (( $# > 9 ));
then 
    echo Too much arguments. Max 9 accepted 1>&2
    exit 1
fi
 
counter=1
countPari=0
countDispari=0
for file in $@
do
    if [[ -f $file ]]; 
    then
        if (( $counter%2==0 ));
        then
            nRighe=$(wc -l $file)
            counterPari=$(( $counterPari + ${nRighe%% *} ))
        else
            wc -l $file 1>&2           
        fi
    fi 
    (( counter++ ))
done
echo $counterPari
