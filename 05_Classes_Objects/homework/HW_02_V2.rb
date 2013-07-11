###############################################################################
#
# Introduction to Ruby on Rails
#
# Object Oriented Secret Number
#
# Read the links below and complete this file. This Lab
# is to practice your knowledge of object oriented programming.
#
###############################################################################
# Lets create an Object Oriented version of our Secret Number Game.
#
# Your updated game should have 4 classes (Main, Secret_Number, Game and Player)
#
# Below is a description of each class and some guidelines for each.
#
# Main
# The main class is where the game begins. This class should tell the player who made it.
# Ask the player for their name and instantiate the Game class.
#
# Secret_Number
# This class should initiate an array of numbers that range between 1 - 10.
# Use a method from the array class to select a random element from that array. This random number will be the secret number.
# This way the secret number is also a secret to you.
#
# Player
# Should initialize the player's name.
#
# Game
# This class holds most of the game logic and should:
# Welcome players and inform them of the game rules.
# Initialize the Player class.
# Initialize the Secret Number class.
# Prompt the user to choose a number, verify if the user guessed correctly.
# If the user guesses incorrectly let them know if they were too high or too low.
# Monitor how many guesses the player has before the game is over.
#
# In creating your game, make sure it has arrays, hashes and all functionality is wrapped in methods.
# Add helpful comments to your code to document what each section does.
#
# Tips: Copy paste your code from homework 1 where necessary.

#############
###SECNO.RB###
#############

class Secret_Number

	attr_accessor :number

	#initiate an array of numbers that range between 1 - 10
  	def initialize(upper_bound)

  		#generate array
  		@number = Array.new

  		#populate array
   		upper_bound.times do |i|
    		i += 1
      		@number << i
    	end

		#select a random element from that array as the secret number
	    @number = @number[rand(number.length)]
  	end
end

###############
###PERSON.RB###
###############

class Player
	attr_accessor :name

	def initialize(name)
		@name = name
	end
end

#############
###GAME.RB###
#############

class Game

	#Welcome players and inform them of the game rules.
	def initialize(name)
		
		#create a player object 
		@player = Player.new(name)

		turns = [*3..6]
		@guess_remain = turns[rand(turns.length)]

		#set a randomised range [i.e. number between 1 & X]
		@topend_range = [*15..30]
		@upper_bound = @topend_range[rand(@topend_range.length)]

		#Initialize the Secret Number class 
		@game = Secret_Number.new(@upper_bound)
		puts @game

		#welcome the player
		puts `clear`
		puts "Welcome #{@player.name}! Guess the Secret Number, it is between 1 and #{@upper_bound}."

		#set a randomised number of rounds to be played

		#begin game
		play_round
	end
	
	def play_round
		while @guess_remain > 0
			puts "You have #{@guess_remain} guesses left"
			take_guess
		end
			abort("You are out of guesses. The number was #{@game.number}. Game over!")
	end
	
	def take_guess
		puts "What is your guess?"
	    @user_guess = gets.chomp.to_i
	    check_ans(@user_guess)
	end

	def check_ans(user_guess)

		#Validate the input (range)
		#if user_guess < num_range_low || user_guess > num_range_high
		if user_guess < 1 || user_guess > @upper_bound
		puts "Epic fail!!! Your guess was not legit"

		#see if the answer is correct, high or low
		else
			@guess_remain -= 1
			if user_guess < @game.number
			puts "That's not it, your guess is too low"
			elsif user_guess > @game.number
			puts "That's not it, your guess is too high"
			else
			abort("Thats right!! The number was #{@game.number}!! You win!! Well played #{@player.name}")
			end
		end
	end	
end

#############
###MAIN.RB###
#############

class Main

	#not sure if this constructor in necessary
	def initialize
		self.greeting
		self.req_name
		self.begin_game
	end

	#tell the player who made it.

	def greeting
		puts `clear`
		puts "Welcome to the Secret Number Game \n"
		puts "Written by AxleMax\n\n"
	end

	#Ask the player for their name
	def req_name
		puts "What is your name?"
		@name = gets.chomp
	end

	#instantiate the Game class
	def begin_game
		#Does this need really to be stored in a variable?
		g = Game.new(@name)
	end
end

m = Main.new

