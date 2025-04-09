#!/usr/bin/env bash

# Function to prompt user
function ask_guess {
  echo "Guess how many files are in the current directory:"
  read guess
}

# Get actual number of files
actual=$(ls -1 | wc -l)

# Main loop
while true; do
  ask_guess
  if [[ $guess -eq $actual ]]; then
    echo "Congratulations! You guessed correctly."
    break
  elif [[ $guess -lt $actual ]]; then
    echo "Too low. Try again."
  else
    echo "Too high. Try again."
  fi
done
