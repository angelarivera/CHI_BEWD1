
# Lets create an Object Oriented version of our Secret Number Game.
#
# Your updated game should have 4 classes (Main, SecretNumber, Game and Player)
#
# Below is a description of each class and some guidelines for each.
#
# Main
#	The main class is where the game begins. This class should tell the player who made it.
#	Ask the player for their name and instantiate the Game class.
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
