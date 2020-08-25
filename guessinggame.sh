#!/usr/bin/env Bash

# File: guessinggame.sh
# Date 25/08/2020
# Author: broberts-20

# function to determine if user's guess is too high or too low. Takes user's input and number of files in current directory as input.
function guess {
    re='^[0-9]+$'
    read number
    while [[ $number != $1 ]]
    do
        # check if user input is a valid number 
        if [[ $number =~ $re ]] 
        then
            # check if user input is too high
            if [[ $number -gt $1 ]]
            then
                echo "Your guess of $number was too high! Guess again."  
            # check if user input is too low
            elif [[ $number -lt $1 ]]
            then
                echo "Your guess of $number was too low! Guess again." 
            fi
        # input is not a valid number
        else
            echo "Please enter a valid number.Try again."    
        fi
        read number
    done

    # loop breaks once user guesses coorrectly
    echo "Your guess of $number is correct! Congratulations!! :)"
}

 # get number of files in current directory
numFiles=$(ls -1 | wc -l)

# Ask user for guess
echo "Hello there"
echo "Please guess the number of files in the current directory, and hit enter"

# determine if user guessed number of files correctly
guess $numFiles
