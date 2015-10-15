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
# We're ready to program! To practice our 
# Ruby skills lets create a secret number game. 
# In this game players have three tries to guess 
# a secret number between 1 and 10. 
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
#  -  Hard code the secret number. Make it a 
# random number between 1 and 10.
#  -  Ask the user for their guess.
#  -  Verify if they were correct. If the player 
# guesses correctly they win the game they should 
# be congratulated and the game should end.
#  -  If they guess incorrectly, give the player 
# some direction. If they guess too high let 
# them know, if they guess too low, let them know.
#  -  Don't forget to let your players know how 
# many guesses they have left. Your game should 
# say something like
#     "You have X many guesses before the game 
# is over enter a another number"
#  -  If they don't guess correctly after 3 tries, print that the Player lost and the game is over. Also let them know what the `secret_number` was.
#
# Make sure to add helpful comments to your code 
# to document what each section does.
# 
# Remember to cast input from the Player into the 
# appropriate data type.
#
###############################################################################
#welcome
puts "Welcome to the secret number game! Created by G. Scannell \r"
#ask player's name
puts "What is your name?"
name = gets.chomp
#say hello and explain the game
print "Hello #{name}! \r Guess a number 
between 1 and 10, you have 3 attempts 
to guess the secret number \r"
#get secret number
secret_num = rand(1..10)
#initialize guesses
guesses = 3
# define the compare function that tests the guess
def compare(guess)
	#if correct then user wins, end game
	if guess == secret_num
		print "great job you got it!!!!!"
		return
	#if guess to low ask for another try
	elsif guess < secret_num
		print "too low try again"
		guesses -= 1
		print "you have #{guesses} more attempt(s)"
	#if too high ask for another try
	else
		print "too high try again"
		guesses -= 1
		print "you have #{guesses} more attempts(s)"
	end
end
# ask for the user guess and iterate over 3 guesses
while guesses > 0
	puts "Guess the secret number 
	(integer between 1-10)"
	guess = gets
	compare(guess)
end
#tell player they did not guess correctly
print "sorry you lost, the secret number was #{secret_num}"



