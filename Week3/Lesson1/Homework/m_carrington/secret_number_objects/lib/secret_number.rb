class SecretNumber
# this class will generate our secret number for us
	attr_accessor :random_num

	def initialize
		@random_num = rand(1..10)
	end

end
