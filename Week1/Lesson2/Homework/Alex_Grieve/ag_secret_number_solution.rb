secret_number = 3

# Welcome the player to the game and ask them for their name
puts "\nWelcome to the game! \nI, Alex, worked hard to make it for you!"
puts "What is your name?\n"
player_name = gets 
puts "\nHi #{player_name}"

# Desribe the rules of the game
puts "\n**Let's play a game!**"
puts "I have a number between 1 and 10 in mind"
puts "You will have 3 chances to guess it correctly"



solved = 0
guess_left = 2

while solved == 0 && guess_left >= 0
	puts "\nWhat is your guess?"
	guess = gets
	guess = guess.to_i

	# If guess is not in range, clarify the rules of the game
	if guess <= 0 || guess > 10
		puts "The number is between 1 and 10, guess again"
		next
	end

	# If the user has one, display the victory message
	if guess == secret_number
		puts "\nCongraturations! You guessed the secret number!!\n"
		solved = 1

	# If the user has guessed incorrectly, respond accordingly
	# increment guess counter
	elsif guess < secret_number
		puts "Your guess was too low! You have #{guess_left} guesses left!"
	elsif guess > secret_number
		puts "Your guess was too high! You have #{guess_left} guesses left!"
	end
	
	guess_left -= 1
end

# If the player is out of guesses and has not solved, they have lost
if solved == 0
	puts "\nSorry, you lost! Better luck next time!"
	puts "The secret number was: #{secret_number}\n"
end

############
# FEEDBACK #
############
# Totally correct and perfectly executed. Totally perfect, good work.
