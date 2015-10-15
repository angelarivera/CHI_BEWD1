# This class holds most of the game logic and should:
#   Welcome players and inform them of the game rules.
#   Initialize the Player class.
#     Initialize the Secret Number class.
#     Prompt the user to choose a number, verify if the user guessed correctly.
#     If the user guesses incorrectly let them know if they were too high or too low.
#   Monitor how many guesses the player has before the game is over.
require 'lib/person'
require 'lib/secret_number'

class Game
  attr_accessor :player, :secret_number

# this class will be complex
# we need to write logic to initialize a new game, and run the game loop
# we'll want to write a few separate methods for unique tasks so that our
# code is structured properly
  
  def initialize(player_name)
    @player = Person.new(player_name)
    @secret_number = SecretNumber.generate
  end

  def choose
    puts "Choose a number between 1 and 10"
    guess = gets.strip

    if guess > self.secret_number
      "You're too high\n Guess again:"
    elsif guess < self.secret_number
      "Too low!\nGuess again:"
    else
      "You got it"
    end
  end

  def play
    3.times do
      do_guess = self.choose

      break if do_guess == "You got it"
    end
  end
end
