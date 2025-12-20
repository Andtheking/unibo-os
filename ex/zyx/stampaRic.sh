#!/bin/bash

read A

if [[ $A == "" ]];
then
	exit 
fi

tail -n+1 | $0
echo $A
