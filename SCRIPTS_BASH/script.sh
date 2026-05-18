#!/bin/bash

# Les variables

name="Alice"
age=30

echo "My name is $name and I am $age years old."

country="France"
city="Paris"
echo "I live in $city, $country."


#Les entrees utilisateur
echo "Please enter your name:"
read user_name
echo "What is your age ?"
read user_age
echo "What is your job ?"
read user_job

echo "Hello, $user_name! You are $user_age years old and work as a $user_job."

# Les tableaux

fruits=("apple" "banana" "cherry")
echo "The first fruit is: ${fruits[0]}"
echo "The second fruit is: ${fruits[1]}"
echo "The third fruit is: ${fruits[2]}"

unset fruits[1] # Remove the second fruit
echo "After removing the second fruit, the array is: ${fruits[@]}"

fruits[1]="grape" # Add a new fruit at index 1
fruits[2]="orange" # Add a new fruit at index 2

echo "After adding new fruits, the array is: ${fruits[@]}"

# Les conditions

value="guessme"
guess=$1

if [ "$guess" == "$value" ]; then
    echo "Congratulations! You've guessed the correct value."
else
    echo "Sorry, that's not correct. Try again!"
fi

