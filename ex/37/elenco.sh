#!/bin/bash

LungNomiDirectory=0
contaFiles=0
for file in $(ls ./);
do
    if [[ -f $file  ]]; 
    then
        (( countFiles++ ))
    fi

    if [[ -d $file  ]];
    then
        (( LungNomiDirectory += ${#file} ))
    fi
   
done

echo LungNomiDirectory = $LungNomiDirectory
echo Files = $countFiles
