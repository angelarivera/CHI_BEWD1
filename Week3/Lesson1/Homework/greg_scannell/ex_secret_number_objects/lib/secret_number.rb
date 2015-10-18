class SecretNumber
	attr_accessor :secret_number

	def initialize
		@secret_number = rand(11)
	end

	def self.generate
		secret_array = []
	
	10.times do 
		secret_array.push(rand(1..10))
	end

	secret_array.sample(1)
	end
end
