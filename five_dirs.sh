#!/bin/bash

# make a directory five
mkdir five
# make five subdirectories
for i in 1 2 3 4 5
do
    mkdir five/dir$i
    for j in 1 2 3 4
    do
	> ../dir$i/file$j
	echo {1..$j} > file$j
    done
done

