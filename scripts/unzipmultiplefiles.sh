#!/usr/bin/env bash

FILES=/logs/*

for filename in $FILES
do
    if [[ $filename == *"logname"* ]] && [[ $filename == *".gz"* ]]
    then
        gzip -d $filename
    fi
done