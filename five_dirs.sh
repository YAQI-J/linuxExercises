#!/bin/bash

# make a directory five
mkdir five
# make five subdirectories
for i in 1 2 3 4 5
do
    mkdir five/dir$i
    for j in 1 2 3 4
    do
	> five/dir$i/file$j
	for (( k = 1 ; k <= j ; k++ ))
	do
	    echo $j >> five/dir$i/file$j
	done
    done
done

