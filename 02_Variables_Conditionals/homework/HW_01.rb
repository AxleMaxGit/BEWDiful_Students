###############################################################################
#
# Back-End Web Development - Homework #1
#
# Secret Number is a game you will build in two parts.
# The purpose of the game is to have players guess a secret number from 1-10.
#
# Read the instructions below.
# This exercise will test your knowledge of Variables and Conditionals.
#
###############################################################################
#
# We're ready to program! To practice our Ruby skills lets create a secret number game. 
# In this game players have three tries to guess a secret number between 1 and 10. 
#
# Here are some guidelines to building your game:
#
#	Intros
# 	-	Welcome the player to your game. Let them know who created the game. 
#	  -	Ask for the player's name then personally greet them by printing to the screen, "Hi player_name!"
#	  -	Any good game will communicate the rules. Let the player know they must guess a number between 1 and 10 
#		and that they only have 3 tries to do so.
#
#	Functionality: 
#	 -	Hard code the secret number. Make it a random number between 1 and 10.
#	 - 	Ask the user for their guess.
#	 -	Verify if they were correct. If the player guesses correctly they win the game they should be congratulated and the game should end.
#	 -	If they guess incorrectly, give the player some direction. If they guess too high let them know, if they guess too low, let them know.
#	 - 	Don't forget to let your players know how many guesses they have left. Your game should say something like
#		  "You have X many guesses before the game is over enter a another number"
#	 -	If they don't guess correctly after 3 tries, print that the Player lost and the game is over. Also let them know what the `secret_number` was.
#
# Make sure to add helpful comments to your code to document what each section does.
# 
# Remember to cast input from the Player into the appropriate data type.
#
###############################################################################
#method to greet thre player
def greeting
	puts "Welcome to the Secret Number Game \n"
	puts "Written by AxleMax\n"
	puts "\nPlease type your name\n"
	$name = gets
	puts "Hi #{$name}"
end

#method validates the guess range, checks the answer decrements the counter for rounds left
def guess

	puts "Please guess a number between #{$num_range_low} and #{$num_range_high}. You have #{$rounds_to_play} guesses remaining"
	guess = gets.chomp.to_i

	if guess < $num_range_low || guess > $num_range_high
		puts "Epic fail!!! Your guess was not legit"
		return
	else
		check_ans(guess)
		$rounds_to_play -= 1
	end
end

#method to check if the guess is correct
def check_ans (guess)
	if guess < $secret_number
		puts "That's not it, your guess is too low"
	elsif guess > $secret_number
		puts "That's not it, your guess is too high"
	else
		puts "You win!! Well played #{$name}"
		exit
	end
end

#set the constants
$num_range_low = 1
$num_range_high = 10
$secret_number = 4

#Set the number of guesses allowed
$rounds_to_play = 5

#greet the player
#greeting

#play the game
while $rounds_to_play > 0 do
   guess
end

#Lose the game if the guesses run out
puts "\n!!!!! You are out of guesses. You lose !!!!! The secret number was #{$secret_number}\n\n"
