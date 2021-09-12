#!/usr/bin/env bash

echo "-----WELCOME TO THE GUESSING GAME-----"

echo "The goal of this game is to try and correctly guess the number of files in the currenct directory"

function guess(){
    true_ans=$(ls -l |grep "^-"|wc -l)
    while true;
    do
        echo "Please guess how many files are in the current directory, and type your answer here: "
        read  number
        if [ $number -lt $true_ans ]
        then
            echo "Sorry. Your guess was too small - there are more files than that in this directory. Please try again."
        elif [ $number -gt $true_ans ]
        then
            echo "Sorry. Your guess was too large - there are not that many files in this directory. Please try again."
        else
            echo " Congratulations! You correctly guessed the number of files in this directory - well done!"
        break;
        fi
    done
}

guess
