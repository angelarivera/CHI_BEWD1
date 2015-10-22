require 'lib/person'
require 'lib/secret_number'

class Game
	attr_accessor :player, :secret_number


# this class will be complex
# we need to write logic to initialize a new game, and run the game loop
# we'll want to write a few separate methods for unique tasks so that our
# code is structured properly
		
	def initialize(player_name)
		@player = Person.new(player_name)
		@secret_number = SecretNumber.generate
	end

	def choose 
		puts "Choose a number between 1 and 10"
		guess = gets.strip

		if guess > self.secret_number
			puts "you guessed poorly, too high\n guess again:"
		elsif guess < self.secret_number
			puts "you guesses poorly, to low\n guess again:"
		else
			puts "you guessed wisely!"
		end
	end

	def play
		3.times do 
			do_guess = self.choose
			if do_guess == "you guessed wisely!"
				break
			end
		end
	end
end
