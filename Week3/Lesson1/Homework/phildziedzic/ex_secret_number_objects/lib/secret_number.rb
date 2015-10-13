# SecretNumber
#   This class should initiate an array of numbers that range between 1 - 10.
#   Use a method from the array class to select a random element from that array. This random number will be the secret number.
#   This way the secret number is also a secret to you.
#


class SecretNumber
	attr_accessor :randoms, :secret_number

	def initialize(a=[], b)
		@randoms = a
		@secret_number = b
	end

	# into randoms, grab 1 example from an array of 10 numbers
	def self.generate
		10.times do
			@randoms << rand(1..10)
		end
		@randoms.sample(1)
	end
end
