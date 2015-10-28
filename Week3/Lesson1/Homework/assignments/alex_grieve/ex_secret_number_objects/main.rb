###############################################################################
#
# Introduction to Ruby on Rails
#
# Object Oriented Secret Number
#
# Read the hints below and complete this file. This Lab
# is to practice your knowledge of object oriented programming.
#
###############################################################################
# SecretNumber
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

$:.unshift (File.dirname(__FILE__))
require 'lib/game'

class Main


	def play
		# Create the game class and assign:
		# - Number of guesses the player has
		# - The range of numbers to guess from
		game = Game.new(3, 10)


		# Welcome the player to the game
		game.welcome_to_the_game

		# Variable to determine if the player would like to play another round
		another_round = "y"

		while another_round == "y"
			another_round = game.play_round
		end

		game.goodbye
	end
	
end

main = Main.new()
main.play

## FEEDBACK
# Excellent work! You went beyond the basics. I really
# like the ability to start a new game at the end. You
# obviously get this stuff and I'm guessing you're doing
# a lot of Googling for how to do stuff which is a great
# habit to get into.

