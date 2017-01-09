#!/usr/bin/env bash

SMALLLOCATION=/logs/
LOCATION=/logs/*
BASEFILE=/logs/logs_2016_09_10.log

echo " "
echo "Analysing logfiles ($LOCATION) newer than $BASELOCATION"

filesChecked=0
totalFound=0

for filename in LOCATION
do
    if [ "$filename" -nt "$BASEFILE" ]
    then
        if [[ $filename == *".log"* ]]
        then
            filesChecked=$((filesChecked+1))
            totalFoundInFile=0
            echo "================================"
            echo $filename
            echo "================================"
            while read -r line
            do
                if [[ $line == *"ABCDEF"* ]]
                then
                    echo $line
                    totalFound=$((totalFound+1))
                    totalFoundInFile=$((totalFoundInFile+1))
                fi
            done < "$filename"
            echo "Total found in ${filename#$SMALLLOCATION}: $totalFoundInFile"
            echo " "
        fi
    fi
done

echo "................................................"
echo "Analysis Complete"
echo " "
echo "Total files Analysed: $filesChecked"
echo "Total Line Errors Found: $totalFound"
echo " "
