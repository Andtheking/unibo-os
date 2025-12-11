#!/bin/bash

counter=1
while (( $RANDOM % 10 != 2 ));
do
    (( counter++ ))
done

echo $counter
