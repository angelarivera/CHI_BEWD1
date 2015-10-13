require 'lib/person'
require 'lib/secret_number'


# Game
#	This class holds most of the game logic and should:
#		Welcome players and inform them of the game rules.
#		Initialize the Player class.
# 		Initialize the Secret Number class.
# 		Prompt the user to choose a number, verify if the user guessed correctly.
# 		If the user guesses incorrectly let them know if they were too high or too low.
#		Monitor how many guesses the player has before the game is over.
#




class Game
	attr_accessor :player :secret_number

	def initialize(a)
		@player = a
		@secret_number = SecretNumber.generate
	end

	Person.new
	SecretNumber.new
	@secret_number = SecretNumber.choose

	puts "Welcome, #{person.player_name}!"
	puts "Here are the rules:/n1) You have three chances to guess a number between 1 and 10./n2)For each guess, you'll be told if it's too low or high./n3)If you don't guess correctly in 3 chances, you lose."
end
