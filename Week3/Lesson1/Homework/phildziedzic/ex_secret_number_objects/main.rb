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
puts "What is your name?"
player_name = gets.strip

# instantiate game class
Game.new(player_name).play



## FEEDBACK
# Excellent work. This works 100% perfectly. Looks like
# you were able to figure this out after we talked.


