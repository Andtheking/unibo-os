#!/bin/bash

# echo SONO DENTRO PONG E PER ME PONG È: $PONG_FILE
while true;
do
    if [[ -f $PONG_FILE ]];
    then
        echo pong
        touch $PING_FILE
        rm -f $PONG_FILE
    fi
    sleep 2s
done
