#!/usr/bin/env bash
# Define the marco function
marco(){
    # Set the MARCO_DIR environment variable to the current directory
    export MARCO_DIR=$(pwd)
}

# Define the polo function
polo(){
    # Change the current directory to the value of the MARCO_DIR environment variable
    cd $MARCO_DIR
}
