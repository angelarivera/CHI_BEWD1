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
	attr_accessor :player, :secret_number, :player_name

	def initialize(a)
		@player_name = player_name
		@player = Person.new(player_name)
		@secret_number = SecretNumber.generate
	end


	def play
		guesses = 3
		
		while guesses > 0
			puts "Guess the secret number (between 1 and 10)"
			guess = gets.strip

			if guess.to_i > self.secret_number[0]
				puts "That's too high, guess lower!"
				guesses -= 1

				if guesses == 0
					puts "YOU LOSE, the secret number was #{secret_number}."
				end

			elsif guess.to_i < self.secret_number[0]
				puts "That's too low, guess higher!"
				guesses -= 1

				if guesses == 0 
					puts "YOU LOSE, the secret number was #{secret_number}."
				end
				
			else
				puts "That's correct, YOU WIN!"
				break
			end
		end
	end

end
