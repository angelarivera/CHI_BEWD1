#Person Class.
class Person
	attr_accessor :name, :credit_score, :gender

	def initialize(a, b, c)
		@name = a
		@credit_score = b
		@gender = c
	end
end
