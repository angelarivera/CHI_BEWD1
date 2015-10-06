# def first_guess
# 	puts "Hello! Welcome to the Guessing Game!"
# 	puts "In this game, you will pick a number between 1 and 10."
# 	puts "If you guess the correct answer, you win $100!"
# 	puts "You only get THREE guesses!"

# 	puts "Please enter your name."
# 	print "> "
# 	user_name = $stdin.gets.chomp   # Im getting the users input

# 	puts "Hi #{user_name}!"

# 	puts "What is your first guess?"
	
# 	print "> "
# 	user = gets.chomp.to_i

# 	guess = 7 # this is the hidden number
	
# 	if user == guess 
# 		puts "You win #{user_name}!"
# 		puts "Thank you for playing the Guessing Game!"
# 		puts "Created by Edgar, 2015"
# 		exit(0) # this exits the program once the correct guess is given
# 	elsif user > guess
# 		puts "Too high, try again!"
# 		second_guess # this will take you to the second_guess method
# 	elsif user < guess
# 		puts "Too low, try again!"
# 		second_guess
# 	else
# 		puts "I don't understand."
# 	end
# end

# def second_guess
# 	puts "What is your second guess?"
	
# 	print "> "
# 	user = gets.chomp.to_i

# 	guess = 7
	
# 	if user == guess 
# 		puts "You win!"
# 		puts "Thank you for playing the Guessing Game!"
# 		puts "Created by Edgar, 2015"
# 		exit(0)
# 	elsif user > guess
# 		puts "Too high, try again!"
# 		third_guess # this will take you to the third_guess method
# 	elsif user < guess
# 		puts "Too low, try again!"
# 		third_guess
# 	else
# 		puts "I don't understand."
# 	end
# end

# def third_guess
# 	puts "What is your last guess?"
	
# 	print "> "
# 	user = gets.chomp.to_i

# 	guess = 7

# 	if user == guess 
# 		puts "You win!"
# 		puts "Thank you for playing the Guessing Game!"
# 		puts "Created by Edgar, 2015"
# 		exit(0)
# 	else
# 		puts "Sorry, my hidden number was #{guess}."
# 		puts "GAME OVER"
# 		puts "Created by Edgar, 2015"
# 	end
# end

# first_guess  # invoking the first_guess method


# ===============================================

# This is my new version using a loop. 

puts "Welcome to the Guessing Game!"
puts "Guess a number between 1 and 10."
puts "If you guess the correct answer, you win $100!"
puts "You only get THREE guesses, Good Luck!!"

def game
	puts "Please enter your name."
	print "> "
	user_name = $stdin.gets.chomp.capitalize   # getting the users input

	puts "Hi #{user_name}!"

	puts "What is your first guess?"
	print "> "

	correct_answer = 7

	3.times do # loops 3 times
		guess = gets.chomp.to_i
	
		if guess == correct_answer
			puts "YOU WIN #{user_name}!"
			puts "Thank you for playing the Guessing Game, created by Edgar 2015."
			exit(0) # it will stop once you guess right. 
		elsif guess > correct_answer
			puts "Too high!"
		elsif guess < correct_answer
			puts "Too low!"
		else
			puts "Guess another number."
		end
	end

	puts "GAME OVER."
	puts "Thank you for playing the Guessing Game, created by Edgar 2015."
end

game

## FEEDBACK
# Really good work. A few things I'd change:
# 1. Instead of using $stdin.gets you can just use plain `gets`. Its the same thing
# 2. When the user guesses wrong there's no feedback to tell them to guess again. I 
# almost overlooked this because I knew how it was supposed to work but when I thought
# about it for a second I noticed. Otherwise great work, the code is great and it works
# as expected.
