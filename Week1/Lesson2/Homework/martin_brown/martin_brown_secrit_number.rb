#Defining number


#Welcome
def Welcome
	puts "Welcome the to greatest game on earth! created by ME! Martin"
end

#get player name
def get_player_name
	puts "what is your name?"
	name=gets.strip
end

#rules
def Start(name)
	#puts "Hi"+{name}+"! Wow what a stupid name... but i'll let you play anyways. So here are the rules: try to guess a number between 1 and 10. You have 3 guesses. That is all. Lets Play!"
  puts "Hi #{name}! Wow what a stupid name... but i'll let you play anyways. So here are the rules: try to guess a number between 1 and 10. You have 3 guesses. That is all. Lets Play!"
end


#guess count
attempt=0

#count attemps
def get_attempt(attempt, number)
	if attempt==1
		puts "you have 2 more attempts"
	elsif attempt==2 
		puts "choose wisely, only one more try"
	elsif attempt==3 
		# puts "YOU FOOL! the number was"+{secrit_number}+".Better luck next time"
    puts "YOU FOOL! the number was #{secrit_number}. Better luck next time"
end		

#gets players guess
def gets_players_guess
	# puts "what is your guess"+{name}+"?"
  puts "what is your guess #{name}?"
	guess = gets.to_i
end

#define secrit number
def secrit_number
	secrit_number=9
end

#define Variables
number=secrit_number 
guess=gets_players_guess
#guess responce

def calc(number, guess)
	if guess == secrit_number
		puts "Correct! Winner! Bye"
	elsif  guess> secrit_number
		puts "WRONG! To High"
	elsif secrit_number< secrit_number
		puts "WRONG! To low"
end

#run the game 
Welcome
get_player_name
Start(name)
guess=gets_players_guess
calc(number, guess)
try +=1
get_attempt(attempt, number)	
guess=gets_players_guess
calc(number, guess)
try +=1
get_attempt(attempt, number)
guess=gets_players_guess
calc(number, guess)
try +=1
get_attempt(attempt, number)	

# FEEDBACK
# This is a good try. The first issue you had was the syntax
# for string interpolation. It's like this: `"#{some_variable} and then some more text with it"
# Besides that, the logic is there and I see what you were trying to do
# but you have to remember that you can't pass variables from the command line
# to your program the way you tried here. In you methods, the `number`
# argument will always fail because there's no number variable defined
# anywhere in the code and your program doesn't know to ask the person
# for it.
# The way you get around this is by using `gets` to get user input.
# Also, you structured the code so that people have 3 tries to guess a number
# but rather than repeating those method calls and incremementing the try variable
# on each pass you could have put all that code into a loop that runs just 3 times
# and that would have saved you from repeating yourself.
