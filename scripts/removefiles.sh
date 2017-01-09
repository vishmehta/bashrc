#!/usr/bin/env bash

function removedumps() {
    depthhs='ls -1 | grep hs_err | wc -1'
    if [ $depthhs -eq 0 ]; then
        echo "No hs_err files found"
    else
        rm hs_err*
        echo "Removed $depthhs hs_err files";
    fi

    depthpid='ls -1 | grep java_pid | wc -1'
    if [ depthpid -eq 0 ]; then
        echo "No java_pid files found"
    else
        rm java_pid*
        echo "Removed $depthpid java_pid files";
    fi
}


removedumps

