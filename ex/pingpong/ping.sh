#!/bin/bash

export PONG_FILE="pong.txt"
export PING_FILE="ping.txt"

touch $PING_FILE
./pong.sh & 

while true;
do
    if [[ -f $PING_FILE ]];
    then
        echo ping
        touch $PONG_FILE
        rm -f $PING_FILE
    fi
    sleep 2s    
done
