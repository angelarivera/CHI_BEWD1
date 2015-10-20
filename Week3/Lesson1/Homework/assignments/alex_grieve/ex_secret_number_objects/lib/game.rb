require 'lib/person'
require 'lib/secret_number'

# Game class contains the following methods:
#   Initialize: 
#       - Initialize and set defaults 
#   welcome_to_the_game: 
#       - Welcome's the player to the game utlizing puts
#       - Calls the get_name function
#   get_name: 
#       - Receives input from the user and creates an instance of the Person class
#   get_secret_number:
#       - Creates an instance of the SecretNumber class
#       - Creates and stores the secret number to the class variable
#   play_round:
#       - Contains the logic of the game
#       - Receives input from the user, and calls is_guess_correct, provides user feedback
#       - Calls player_won/player_lost 
#       - Asks player to play_another_round
#   is_guess_correct:
#       - Checks user input vs. the secret number, returns results
#   player_won:
#       - Provides feedback to a winner
#   player_lost:
#       - Provides feedback to a loser
#   play_another_round
#       - inquires if a user would like to play another round


class Game
	attr_accessor :player_name, :guesses, :range, :secret_number, :solved, :player_record

	# Initialize the size of the array - defaults to ten but can be input in main
	# Initialize the array of numbers from which to draw a random number
	def initialize(guesses=3, range)
		@guesses = guesses
		@range = range
		@solved = false
		@player_record = {"Wins" => 0 , "Losses" => 0}
	end

	# Method to welcome the player to the game
	def welcome_to_the_game
		# Welcome the player to the game
		puts "\nWelcome to the Secret Number Game! \nI, Alex, worked hard to make it for you!"

		# Call the method to get the player's name
		self.get_name

		# Let the player know the rules
		puts "\nThanks for playing #{self.player_name}!"
		puts "I am thinking of a number between 1 and #{range}"
		puts "You will have #{self.guesses} attempts to guess that secret number"
	end

	# Method to receive the player's name
	def get_name
		# Ask the player for their name
		puts "\nWhat is your name?"

		# Utilize the player class to store the input name
		self.player_name = Person.new(gets.strip)
	end

	# Method to call the SecretNumber class and assign the secret number
	def get_secret_number
		# Create a new SecretNumber instance with the range specified
		self.secret_number = SecretNumber.new(range)

		# Assign a random number to this class's secret_number variable
		self.secret_number = self.secret_number.random_number
	end

	# Method to control the gameplay
	def play_round
		# Initialize a secret number
		self.get_secret_number

		# Create a local variable for guesses so that we can pay multiple rounds
		# Reset self.solved for similar reasons
		guesses_left = self.guesses
		self.solved = false

		# Loop through asking the player for a guess and checking it against the secret number
		while self.solved != true && guesses_left > 0
			# Get another guess from the player
			puts "\nWhat is your guess!?"
			self.solved = self.is_guess_correct(gets)

			# If the player input a number out of range, tell them
			if self.solved == "Out of range"
				# This mistake does not cost the player a guess
				puts "\nThe number is between 1 and #{@range}, please guess again"

			# If player's guess is wrong tell them in which direction they were wrong
			elsif self.solved == "high"
				guesses_left -= 1
				puts "\nYour guess was too high! You have #{guesses_left} guesses left!"

			elsif self.solved == "low"
				guesses_left -= 1
				puts "\nYour guess was too low! You have #{guesses_left} guesses left!"
			end

		end

		# See if the player has won or lost
		if self.solved == true
			self.player_won
		else
			self.player_lost
		end

		return self.play_another_round
	end

	# Method to see if the player's guess was correct
	def is_guess_correct(guess)
		# Convert guess to an int so that it can be compared
		guess = guess.to_i

		# Catch case where the player's guess is not in range
		if guess <= 0 || guess > @range
			return "Out of range"

		# Catch if the user has guessed correctly and won the game
		elsif guess == self.secret_number.to_i
			return true

		# If the user has guessed incorrectly, respond accordingly
		elsif guess < self.secret_number.to_i
			return "low"
		
		elsif guess > self.secret_number.to_i
			return "high"
		end
	end

	# Output the winning message and incrememnt the player's record
	def player_won
		puts "\nCongratulations! your have won!"
		self.player_record["Wins"] += 1
	end

	# Output the losing message and increment the player's record
	def player_lost
		puts "\nI am sorry, but you have lost!"
		puts "The secret number was #{self.secret_number}"
		self.player_record["Losses"] += 1
	end

	# Method to see if the player wants to play again
	def play_another_round
		puts "Do you want to play another round? (y/n)"
		game_over = gets.strip

		if game_over == "y"
			return "y"
		else
			return "n"
		end
	end

	# Output the goodbye message
	def goodbye
		puts "\nThanks for playing #{self.player_name}!\n"
		puts "You finished with #{player_record["Wins"]} wins and #{player_record["Losses"]} losses"
	end
end
