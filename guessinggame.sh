#!/usr/bin/env bash

function guess_file_count {

    correct_guess=0
    while [[ $correct_guess -eq 0 ]]
    do
        echo "Enter your guess for number of files in current directory: "
        read guess
        if [[ $guess =~ ^\s*$ || $guess =~ [^0-9]+ ]]
        then
            echo "Your guess should be a number"
        elif [[ $guess -gt $1 ]]
        then
            echo "Your guess is too high"
        elif [[ $guess -lt $1 ]]
        then
            echo "Your guess is too low"
        else
            echo "Congrats!!! You guessed correctly."
            let correct_guess=1
        fi
    done
}

file_count=$(ls -1A | wc -l)
guess_file_count file_count