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
# In creating your game, make sure it has arrays, hashes and all functionality is wrapped in methods.
# Add helpful comments to your code to document what each section does.
#
# Tips: Copy paste your code from homework 1 where necessary.
class Game
# this class will be complex
# we need to write logic to initialize a new game, and run the game loop
# we'll want to write a few separate methods for unique tasks so that our
# code is structured properly
	attr_accessor :player, :secret_number, :guess, :guesses_left

	def initialize
		@player = Person.new
		@secret_number = SecretNumber.new.random_num
		@guess = guess
		@guesses_left = guesses_left
	end

	def number_check
		@guesses_left = 2
		@guess = gets.strip.to_i
		until @guesses_left == 0 do
			if @guess > @secret_number
				@guesses_left -= 1
				puts "That's too high! Only #{(guesses_left + 1).to_s} more guesses!"
				@guess = gets.strip.to_i
			elsif @guess < @secret_number
				@guesses_left -= 1
				puts "That's too low! Only #{(guesses_left + 1).to_s} more guesses!"
				@guess = gets.strip.to_i
			else
				puts "You guessed the number! Great job! Have fun being an human for the rest of your pitiful life."
				exit

			end
			if @guesses_left == 0
				puts "You lose. The answer was #{@secret_number.to_s}. Please step into the machine on your left."
				exit
			end
		end
	end

end
