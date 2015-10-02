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
	puts "Hi"+{name}+"! Wow what a stupid name... but i'll let you play anyways. So here are the rules: try to guess a number between 1 and 10. You have 3 guesses. That is all. Lets Play!"
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
		puts "YOU FOOL! the number was"+{secrit_number} ".Better luck next time"
end		

#gets players guess
def gets_players_guess
	puts "what is your guess"+{name}+"?"
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
		