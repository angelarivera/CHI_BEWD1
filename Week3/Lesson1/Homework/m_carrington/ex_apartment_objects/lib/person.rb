#Person Class.
class Person
	attr_accessor :name, :credit_score, :sex

	def initialize (name, credit_score, sex)
		@name = name
		@credit_score = credit_score
		@sex = sex
	end
end
