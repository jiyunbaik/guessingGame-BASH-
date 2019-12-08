#!/bin/bash

echo Enter your Student number
read student

if [ -d ~/GuessingGame/Players/$student ]
then
	echo Welcome back $student
else
	mkdir ~/GuessingGame/Players/$student
fi

for (( ; ; ))
do
answer=$[RANDOM%50+1] 
echo Answer is $answer >> ~/GuessingGame/Players/$student/temp.txt
echo You have 3 attempts to guess the number from 1 to 50

a=0
b=0
count=1
while [ $a -lt 3 ]
do
	echo -n Enter your guess number $count:
	read guess
	echo Your guess $count guess is $guess >> ~/GuessingGame/Players/$student/temp.txt
	if [ $guess -eq $answer ]
	then
		echo Congtrats! You got right answer!
		echo Congrats! You Won the game!!! >> ~/GuessingGame/Players/$student/temp.txt
		count=$[count+1]
		a=$[a+3]

	elif [ $guess -lt $answer ] 
	then
		echo Your answer is lower than the Answer
		count=$[count+1]
		a=$[a+1]

	else
		echo Your answer is higher than the Answer
		count=$[count+1]
		a=$[a+1]
	fi
done

if [ $a -eq 3 ]
then
		echo Too bad! You Lost!!
		echo Too bad! You Lost the game!! >> ~/GuessingGame/Players/$student/temp.txt
fi

cat ~/GuessingGame/Players/$student/temp.txt
cat ~/GuessingGame/Players/$student/temp.txt >> ~/GuessingGame/Players/$student/scores.txt
rm -rf ~/GuessingGame/Players/$student/temp.txt
echo -n Would you like to play again Y/N
read reply
if [ $reply == "Y" ]
then
	echo Lets play new game
else
	echo Thank you for playing!
	break
fi
done
