require 'lib/person'
require 'lib/secret_number'

class Game
# this class will be complex
# we need to write logic to initialize a new game, and run the game loop
# we'll want to write a few separate methods for unique tasks so that our
# code is structured properly

	attr_accessor :player, :secret_number, :guesses

	def initialize(player_name)
		@player = Person.new(player_name)
		@secret_number = SecretNumber.new
	end

	def startgame
		puts "#{@player.player_name.capitalize}, what is your first guess?"
		secret_number_game
	end

	def secret_number_game

		print "> "

		correct_answer = 7

		3.times do # loops 3 times
		guess = gets.chomp.to_i
	
			if guess == correct_answer
				puts "YOU WIN #{@player.player_name.capitalize}!"
				puts "*****Thank you for playing the Guessing Game, created by Edgar 2015*****"
				exit(0) # it will stop once you guess right. 
			elsif guess > correct_answer
				puts "Too high!"
			elsif guess < correct_answer
				puts "Too low!"
			else
				puts "Guess another number."
			end
		end

	puts "GAME OVER, #{@player.player_name.capitalize}."
	puts "*****Thank you for playing the Guessing Game, created by Edgar 2015*****"
	end
end





