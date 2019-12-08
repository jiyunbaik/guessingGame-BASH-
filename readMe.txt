1.	Using shell scripting, create a guessing number game. Create a directory in your home directory, call it GuessingGame, within it create another directory, call it Players, place your script within the GuessingGame directory

2.	Upon execution of your program, ask the user for their N number, once they enter their number, read it, and check it within the Players folder if there are any directory available within it with that matches their number
If there is no directory for the player, create it within the Player Directory and use the n number as the name. Within their directory, create a text file, score.txt, which you will be using to keep track off their scores.

3.	Apply permission on GuessingGame directory so that your friends can access your home directory/GuessingGame and execute the script to play the game

4.	Now, let start the game, using the code provided in the lecture, generate a random number from 1-50. 
Once the number has been created, store it into a variable, then Ask the user to guess it
**Allow three guesses 
Compare the guessing number with the actual generated number
a. Make sure to provide hints back to the user if the number enter is low or high
	
Upon three tries or if user guesses the number correctly, display all the guesses along with the actual number with congrats or try again message

Store the guesses, actual number, and the final result into their score.txt file 

5.	Finally, ask if they would like to play again, if ‘Y’ then repeat from step# 4 above otherwise, display all of their scores and a thank you message. 
