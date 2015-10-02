###############################################################################
#
# Back-End Web Development - Homework #1
#
# Secret Number is a game you will build in two parts.
# The purpose of the game is to have players guess a secret number from 1-10.
#
# Read the instructions below.
# This exercise will test your knowledge of Variables and Conditionals.
#
###############################################################################

# welcome
puts "Welcome to Secret Number 3000! This game was created by Phil Dziedzic."

# ask for name, explain rules
puts "Please enter your name."
player_name = user_input.to_s
puts "Hi #{player_name}!"
puts "Okay so here are the rules:/n1) You have three chances to guess a number between 1 and 10./n2)For each guess, you'll be told if it's too low or high./n3)If you don't guess correctly in 3 chances, you lose."

# generate random number, initialize guesses at 3
secret_number = rand(1..10)
remaining_guesses = 3

# while player has remaining guesses, prompt for input. convert to integer and run the comparison function
while number_of_guesses > 0
	puts "Guess the secret number!"
	player_guess = user_input.to_i
	compare_guess(player_guess)
# if player is out of guesses, tell them they lose and give up the secret number
puts "Bummer, you lose! The secret number was #{secret_number}!"

# ask user for input
def user_input
	gets
end

# comparison function with outputs
def compare_guess(guess)
	# if correct, inform they've won
	if guess == secret_number
		puts "What are you, psychic? That's correct, you win!"
	# if low, reduce remaining guesses and tell them to guess higher, then exit to re-prompt
	elsif guess < secret_number
		puts "That's a little low, try something higher."
		number_of_guesses -= 1
		puts "You have #{remaining_guesses} guesses remaining."
	end
	# if high, reduce remaining guesses and tell them to guess lower, then exit to re-prompt
	else
		puts "That's a little high, try something lower."
		number_of_guesses -= 1
		puts "You have #{remaining_guesses} guesses remaining."
	end
end
