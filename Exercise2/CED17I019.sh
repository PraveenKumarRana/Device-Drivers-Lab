#!/bin/bash

# BASIC LINUX COMMAND
#======================================================================================

# Listing of all the files/folders present in the current directory.
echo "Listing of all the files/folders present in the current directory."
ls -l
echo ""

# Displays calender.
echo "Displays Calender."
cal
echo ""

# To know the username of logged in user.
echo "Current logged in username"
whoami
echo ""

# To list all the user who uses this system
echo "All users"
who
echo ""

# Listing hidden files
echo "Listing hidden files."
ls -a
echo ""

# Display Content of the File
echo "Display Content of the File."
cat CED17I019_Q1.txt
echo ""

# Counting words in a File
echo "Counting words in a File."
wc CED17I019_Q1.txt
echo ""

# Taking input and printing it to the stdout
echo "Enter the number A: "
read A
echo "You entered $A"
echo ""

# Tokenizing the given string.
echo "Enter string for Tokenization."
read STRING
for TOKEN in $STRING
do
    echo "$TOKEN"
done

# Tokenizing the given string and storing it's value in array and then printing it.
echo "Enter string for making tokens and storing it into array"
read STR
NAMES=()
i=0

for TOKEN in $STR
do
    NAMES[$i]=${TOKEN}
    let i+=1
done

echo Names:
for n in "${NAMES[@]}"
do
    echo $n
done

# ARITHMETIC OPERATION
#======================================================================================
echo "Arithmetic Operation - Increment of Variable"
%count=5
%count=$count+1
echo $count
echo ""

echo "Evaluation of 2 + 2: "
val=`expr 2 + 2`
echo "Total value : $val"

# TAKING AGE AS USER INPUT AND DETERMINING IF A PERSON CAN VOTE OR NOT.
#======================================================================================
echo "TAKING AGE AS USER INPUT AND DETERMINING IF A PERSON CAN VOTE OR NOT."
echo "Enter your age: "
read AGE
VO=18

if [[ $AGE -ge $VO ]]
then
    echo "You are eligible to vote."
else
    echo "You are not eligible to vote."
fi