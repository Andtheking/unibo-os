#!/bin/bash

if (( $# != 2 ));
then
    echo Coglione, usa solo 2 argomenti
    exit 1
fi

ORIGINE="$1"
DESTINAZIONE="$2"

find $ORIGINE -regex ".*\.txt" -exec cp {} $DESTINAZIONE \; 
