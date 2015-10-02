def first_guess
	puts "Hello! Welcome to the Guessing Game!"
	puts "In this game, you will pick a number between 1 and 10."
	puts "If you guess the correct answer, you win $100!"
	puts "You only get THREE guesses!"

	puts "Please enter your name."
	print "> "
	user_name = $stdin.gets.chomp   # Im getting the users input

	puts "Hi #{user_name}!"

	puts "What is your first guess?"
	
	print "> "
	user = gets.chomp.to_i

	guess = 7 # this is the hidden number
	
	if user == guess 
		puts "You win #{user_name}!"
		puts "Thank you for playing the Guessing Game!"
		puts "Created by Edgar, 2015"
		exit(0) # this exits the program once the correct guess is given
	elsif user > guess
		puts "Too high, try again!"
		second_guess # this will take you to the second_guess method
	elsif user < guess
		puts "Too low, try again!"
		second_guess
	else
		puts "I don't understand."
	end
end

def second_guess
	puts "What is your second guess?"
	
	print "> "
	user = gets.chomp.to_i

	guess = 7
	
	if user == guess 
		puts "You win!"
		puts "Thank you for playing the Guessing Game!"
		puts "Created by Edgar, 2015"
		exit(0)
	elsif user > guess
		puts "Too high, try again!"
		third_guess # this will take you to the third_guess method
	elsif user < guess
		puts "Too low, try again!"
		third_guess
	else
		puts "I don't understand."
	end
end

def third_guess
	puts "What is your last guess?"
	
	print "> "
	user = gets.chomp.to_i

	guess = 7

	if user == guess 
		puts "You win!"
		puts "Thank you for playing the Guessing Game!"
		puts "Created by Edgar, 2015"
		exit(0)
	else
		puts "Sorry, my hidden number was #{guess}."
		puts "GAME OVER"
		puts "Created by Edgar, 2015"
	end
end

first_guess  # invoking the first_guess method











