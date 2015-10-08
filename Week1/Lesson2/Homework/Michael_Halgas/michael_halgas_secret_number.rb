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
#
# We're ready to program! To practice our Ruby skills lets create a secret number game. 
# In this game players have three tries to guess a secret number between 1 and 10. 
#
# Here are some guidelines to building your game:
#
# Intros
#   - Welcome the player to your game. Let them know who created the game. 
#   - Ask for the player's name then personally greet them by printing to the screen, "Hi player_name!"
#   - Any good game will communicate the rules. Let the player know they must guess a number between 1 and 10 
#   and that they only have 3 tries to do so.
#
# Functionality: 
#  -  Hard code the secret number. Make it a random number between 1 and 10.
#  -  Ask the user for their guess.
#  -  Verify if they were correct. If the player guesses correctly they win the game they should be congratulated and the game should end.
#  -  If they guess incorrectly, give the player some direction. If they guess too high let them know, if they guess too low, let them know.
#  -  Don't forget to let your players know how many guesses they have left. Your game should say something like
#     "You have X many guesses before the game is over enter a another number"
#  -  If they don't guess correctly after 3 tries, print that the Player lost and the game is over. Also let them know what the `secret_number` was.
#
# Make sure to add helpful comments to your code to document what each section does.
# 
# Remember to cast input from the Player into the appropriate data type.
#
###############################################################################

#welcome message
def print_welcome
	puts "Welcome to the number game! This game was created by Michael Halgas."
end

#get player's name
def get_player_name
	puts "What's your name, player?"
	gets.strip
end

#say hi and explain the game
def ready_start(name)
	puts "Hello #{name}! Guess a number between 1 and 10. You have 3 attempts to guess the SECRET NUMBER!"
end

#start guess count
try = 3

#count attempts 
def get_try(try, number, name)
	if try == 1
		puts "You have 2 attempts remaining, #{name}"
	elsif try == 2
		puts "You have 1 attempt remaining, #{name}"
	else try == 3
		puts "Game over, #{name}. The secret number is #{number}"
	end
end

#get player's guess
def get_player_guess(name)
	puts "What's your guess, #{name}?"
	gets.to_i
end

#set beginning conditions
correct = 0
secret_number = 6

#calculate response 
def calc_response(secret_number, guess, name, try)
	if secret_number > guess
		puts "Too low, #{name}. you have #{try} attempts remaining"
	elsif secret_number < guess
		puts "Too high, #{name}"
	else secret_number == guess
		puts "Nice job, #{name}! You guessed the Secret Number! Try again sometime... if you dare!"
	end
end

#calculate last guess response
def calc_last_guess(secret_number, last_guess, name, try)
	if secret_number > last_guess
		puts "Too low, #{name}. You have #{try} attempts remaining. The secret number was #{secret_number}."
	elsif secret_number < last_guess
		puts "Too high, #{name}. You have #{try} attempts remaining. The secret number was #{secret_number}."
	else secret_number == last_guess
		puts "Nice job, #{name}! You guessed the Secret Number! Try again sometime... if you dare!"
	end
end



#run the game
print_welcome
name = get_player_name
ready_start(name)

while try > 0 && correct == 0 
	if try > 1
		try -= 1
		guess = get_player_guess(name)
		calc_response(secret_number, guess, name, try)
			if secret_number == guess
				correct += 1
			end
	else try == 1 
		puts "Last try! What's your guess #{name}?"
		last_guess = gets.to_i
		try -= 1
		calc_last_guess(secret_number, last_guess, name, try)
			if secret_number == guess
				correct += 1
			end
	end
end	

## FEEDBACK
# Excellent work. I couldn't have done it better myself.
