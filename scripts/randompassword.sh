#!/usr/bin/env bash

# Generates a random password
# $1 = number of characters; defaults to 32
# $2 = include special characters; 1 = yes, 0 = no; defaults to 1

function randpass(){
    if [ "$2" == "0" ]; then
        cat /dev/urandom | tr -cd '[:alnum:]' | head -c ${1:-32}
    else
        cat /dev/urandom | tr -cd '[:graph:]' | head -c ${1:-32}
    fi
    echo
}

randpass $1 $2