# Create a person class
# For this assignment we need to simply hold data
# No methods are necessary
class Person
	attr_accessor :name, :credit_score, :gender

	def initialize(name, credit_score, gender)
		@name = name
		@credit_score = credit_score
		@gender = gender
	end
end