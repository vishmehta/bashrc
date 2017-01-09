#!/usr/bin/env bash

#####################
# Updates all Repositories
#####################

# So you can use aliases defined in .bashrc
shopt -s expand_aliases
source ~/.bashrc

function updategit(){
    find -maxdepth 1 -type d -exec sh -c '(cd {} echo "" && echo ---------------------------- && basename $PWD && git pull)' ';'
    # find . -type d -exec sh -c '(cd {} && COMMAND)' ';'
    # where COMMAND is the command you want to run
    # This runs recursively i.e. traverses all subdirectories as well
    # {} denotes each directory found by find, in order
    # and the sh -c spawns a shell that cd's to the directory and runs COMMAND
}

export -f updategit

function updatesvn() {
    echo -------------------
    basename $PWD
    svn up
}
export -f updatesvn

# Navigate to folder and run updategit for recursive git update and updatesvn for recursive svn update

