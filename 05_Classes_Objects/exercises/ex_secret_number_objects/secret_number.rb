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
#	The main class is where the game begins. This class should tell the player who made it.
#	Ask the player for their name and instantiate the Game class.
#
# Secret_Number
#   This class should initiate an array of numbers that range between 1 - 10.
#   Use a method from the array class to select a random element from that array. This random number will be the secret number. 
#   This way the secret number is also a secret to you.
#
# Player
#  Should initialize the player's name. 
#
# Game
#	This class holds most of the game logic and should:
#		Welcome players and inform them of the game rules.
#		Initialize the Player class.
# 		Initialize the Secret Number class.
# 		Prompt the user to choose a number, verify if the user guessed correctly.
# 		If the user guesses incorrectly let them know if they were too high or too low.
#		Monitor how many guesses the player has before the game is over.
#
# In creating your game, make sure it has arrays, hashes and all functionality is wrapped in methods.
# Add helpful comments to your code to document what each section does.
# 
# Tips: Copy paste your code from homework 1 where necessary. 

class Main

	#not sure if this constructor in necessary
	def initialize
		self.greeting
		self.req_name
		self.begin_game
	end

	#tell the player who made it.

	def greeting
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
		Game.new(@name)
	end

end

class Secret_Number

	#initiate an array of numbers that range between 1 - 10

	#select a random element from that array as the secret number

end

class Game

	#Welcome players and inform them of the game rules.
	def initialize(name) 
			puts "Welcome to the game #{name}"
			Player.new(name)
	end

	#Initialize the Player class.

	class Player

		attr_accessor :name
		#player.name = "#{name}"
		#player.name #=> Returns your value

		def initialize(name)
			@name = name
			puts self.name
			#player.name = "#{name}"
			#player.name = @name
			#person.name = "Alex"
			#puts "test"
		end
	
  		#player = Player.new


  		#person = Person.new
		

		

	end	

	#Initialize the Secret Number class.

	#Prompt the user to choose a number, verify if the user guessed correctly.

	#If the user guesses incorrectly let them know if they were too high or too low.

	#Monitor how many guesses the player has before the game is over.

end

class Player
	#initialize the player's name
	#use @name as player's object name

end

m = Main.new

