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

GUESS_NUMBER = 3
NUMBER = 6

puts "Hi, welcome to Ruby Roulette. This was created by Colin McCaleb."
puts "To begin, please enter your First Name."
name = gets.chomp

puts
puts "Hello #{name}."
puts "You have three tries to guess the number. I will tell you if you are too low or too high."
puts "Give me your best shot!"
puts

  
  num_guesses = 1
  
  # GUESSING LOOP
  loop do 
    puts "Guess number #{num_guesses}. What is your guess?"
    guess = gets

    if guess.to_i < NUMBER
      puts "Your guess was too low!"
    elsif guess.to_i > NUMBER
      puts "Your guess was too high!"
    else
      # If we get here, the guess was right!
      puts "You got the number right! It was #{NUMBER}."
      break
    end
  
    if num_guesses >= 3
      puts "You have exceeded the maximum number of guesses."
      break
    end
    num_guesses += 1
  end
  
  # REPLAY QUERY
  puts "The game is over. The secret number was 6!"
  puts "Press Return to escape game."
puts "Cheers!"
