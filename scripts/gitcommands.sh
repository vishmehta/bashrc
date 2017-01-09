#!/usr/bin/env bash

#####################
# Execute same git command across multiple repositories
#####################

# So you can use aliases defined in .bashrc
shopt -s expand_aliases
source ~/.bashrc

COMMAND=$1

function printspace() {
    echo -------------------------------------
}
export -f printspace

function gitcomms() {
    echo Executing git "$1"

    printspace
    echo repo1
    # assume command exists to go to repo1
    repo1
    eval git "$1"

    printspace
    echo repo2
    # assume command exists to go to repo2
    repo2
    eval git "$1"

    printspace
    echo repo3
    # assume command exists to go to repo3
    repo3
    eval git "$1"

    printspace
    echo repo4
    # assume command exists to go to repo4
    repo4
    eval git "$1"

    # back to repo1
    repo1
}
export -f gitcomms

if [ "$COMMAND" = "master" ];
then
    gitcomms "checkout master"
elif [ "$COMMAND" = "stashlist" ];
then
    gitcomms "stash list"
elif [ "$COMMAND" = "stashclear" ];
then
    gitcomms "stash clear"
else
    gitcomms $COMMAND
fi

repo1