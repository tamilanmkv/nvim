#!/bin/bash


# check system linux or mac if its is windows get the hell out
if [ "$(uname)" == "Darwin" ]; then
    OS="mac"
    
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    OS="linux"
fi

if [ "$OS" == "mac" ]; then
    echo "mac"
elif [ "$OS" == "linux" ]; then
    echo "linux"
fi
