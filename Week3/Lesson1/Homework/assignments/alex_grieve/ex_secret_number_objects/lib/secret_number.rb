# SecretNumber class contains the following methods:
#   Initialize: 
#       - Initialize and set defaults 
#   to_i: 
#       - Convert secret number to an int
#   to_s: 
#       - Convert secret number to a string

class SecretNumber
# this class will generate our secret number for us
	attr_accessor :numbers

	# Initialize the size of the array - defaults to ten but can be input by the user
	# Initialize the array
	def initialize(numbers=10)
		@numbers = numbers
		@num_list = []
		@random_number
	end

	# Create a method to return a random number
	def random_number
		# Create an array of 1 to the size input by the player
		for i in 1..@numbers
			@num_list.push(i)
		end

		# Extract a random number from the array and return it
		@random_number = @num_list.sample

		return @random_number
	end

	# Secret Number is it's own class, and as such does not have comparison operators 
	# Overwritting the to_i method will allow the secret number class to be compared to user input
	def to_i
		return @random_number
	end

	def to_s
		return puts @random_number
	end
end
