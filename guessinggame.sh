# This is the bash script for the guessing game 
#!/usr/bin/env bash

# Introduce the game and what the player needs to do
echo "-----WELCOME TO THE GUESSING GAME-----"

echo "The goal of this game is to try and correctly guess the number of files in the currenct directory"

# Create the function here 
function guess(){
    true_ans=$(ls -l |grep "^-"|wc -l)
    while true;
    do
        echo "Please guess how many files are in the current directory, and type your answer here: " # Ask the player to enter their guess
        read  number
        if [ $number -lt $true_ans ]
        then
            echo "Sorry. Your guess was too small - there are more files than that in this directory. Please try again." # Error message if guess is too low, and prompt to retry
        elif [ $number -gt $true_ans ]
        then
            echo "Sorry. Your guess was too large - there are not that many files in this directory. Please try again." # Error message if guess is too high, and prompt to retry
        else
            echo " Congratulations! You correctly guessed the number of files in this directory - well done!" # Congratulatory message if player's guess is correct
        break;
        fi
    done
}

guess
