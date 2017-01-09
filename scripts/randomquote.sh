#!/usr/bin/env bash

# Keep this updated when you add or take away from below
NUM_QUOTES=3

# Generate a random quote number varaible, 'rand'
RAND=$[ ( $RANDOM % $NUM_QUOTES ) + 1]
case $RAND in
    1) QUOTE="Quote1";;
    2) QUOTE="Quote2";;
    3) QUOTE="Quote3";;
esac

# Displays the random quote from the case statement and format it to a line wrap of 80 characters
echo "$QUOTE" | fmt -80