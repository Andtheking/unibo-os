#!/bin/bash

filesFound=0
args=""
for file in $(ls -S1 /usr/include/*.h);
do
    if [[ -f $file ]];
    then
        args="$args $file"
        (( filesFound++ ))
    fi

    if (( $filesFound >= 7 ));
    then
        break
    fi
done
./contaseparatamente.sh $args 1>&2
