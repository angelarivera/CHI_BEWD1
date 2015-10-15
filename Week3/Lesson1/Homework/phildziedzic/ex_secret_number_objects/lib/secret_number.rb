# SecretNumber
#   This class should initiate an array of numbers that range between 1 - 10.
#   Use a method from the array class to select a random element from that array. This random number will be the secret number.
#   This way the secret number is also a secret to you.
#


class SecretNumber
	# generate 10 randoms, choose 1 of them
	def self.generate
		secret_array = []

		10.times do
			secret_array << rand(1..10)
		end

		secret_array.sample(1)
	end
end
