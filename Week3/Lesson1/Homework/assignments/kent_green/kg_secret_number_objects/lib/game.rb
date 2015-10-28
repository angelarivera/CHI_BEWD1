
# this class will be complex
# we need to write logic to initialize a new game, and run the game loop
# we'll want to write a few separate methods for unique tasks so that our
# code is structured properly

require 'lib/person.rb'
require 'lib/secret_number.rb'
require 'lib/game.rb'

class Game
	attr_accessor :player, :secret_number

def initialize(player)
	@player = Person.new
	@secret_number = SecretNumber.new
end

#explain the rules
def play
 puts 'You have three chances to guess the Secret Number. Fame and fortune await!'

#start the game
 while guess_count < 3 do
	puts 'What is your guess?'
 	guess = gets.chomp.to_i
 	guess_count += 1

#set clue logic
	if guess > @secret_number
		puts 'Whoa, too high!'
	elsif guess < @secret_number 
		puts 'Too low. Go big or go home.'
	else
		puts "You've guessed the Secret Number! Tell all your friends!"
		break
	end

	if guess_count >= 3
		puts 'You did not guess the Secret Number. Your descendents will live in shame.'
	end
 end
end





