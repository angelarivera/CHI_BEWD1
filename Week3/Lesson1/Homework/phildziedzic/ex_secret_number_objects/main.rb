###############################################################################
#
# Introduction to Ruby on Rails
#
# Object Oriented Secret Number
#
# Read the hints below and complete this file. This Lab
# is to practice your knowledge of object oriented programming.
#
###############################################################################




# In creating your game, make sure it has arrays, hashes and all functionality is wrapped in methods.







$:.unshift (File.dirname(__FILE__))
require 'lib/game'

# put code here print a welcome message for your user
puts "Welcome to Secret Number 4000! This game was created by Phil Dziedzic."

# ask user to enter name, send to person class
def create_player
	puts "What is your name?"
	player_name = gets.strip
	Person.new(player_name)
end

player = create_player

# instantiate game class
Game.new(player)
