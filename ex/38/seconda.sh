#!/bin/bash

if (( $# != 1  ));
then
    echo Exactly 1 argument is required! 1>&2
    exit 1
fi

if [[ ! -f "$1" ]];
then
    echo The argument was not a file. 1>&2
    exit 2
fi

OUT=""
while read A B C;
do
    OUT="$OUT $B "
done < $1

echo $OUT
