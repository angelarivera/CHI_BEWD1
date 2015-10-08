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

# assign variables 

# $ makes variables global so local methods can access them
$secret_number = 4
# if I want to change it to a random number use the below variable
# random_number = 1 + rand(10)
player_name = ""
player_guess = 0
round_count = 1

# define methods
def you_win
	puts "You guessed the number! Great job! Have fun being an human for the rest of your pitiful life."
end

def guess_again
	puts "That's not right. Guess again."
	player_guess = gets.strip.to_i
end

def you_lose
	puts "You lose. The answer was #{$secret_number}. Please step into the machine on your left."
end

# start gameplay
puts "Welcome to my guess the number game! I'm Dr. Moreau, What's your name?"
player_name = gets.strip.to_s

puts "Nice to meet you #{player_name.capitalize}. You now have 3 tries to guess a number between 1 and 10 before I turn you into a human-beast hybrid.\nWhat is your first guess?"
player_guess = gets.strip.to_i

# start conditionals
if player_guess == $secret_number
	puts you_win
	exit
end
#iterate through rounds
until round_count == 3 do
	if player_guess != $secret_number
		round_count += 1
		puts guess_again
	end
end

if player_guess != $secret_number && round_count == 3
	puts you_lose
end





