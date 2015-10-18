#Sharing Behavior and Variables

# Create an employee class.
# This is the base class the others will inherit from
# Employees have a first name attr, last name attr, and
# a full name method.
class Employee

	attr_accessor :first_name, :last_name

	def initialize(first_name, last_name)
		@first_name = first_name
		@last_name = last_name
	end
	def full_name
		"#{self.first_name} #{self.last_name}"
	end

end

# A manager is contactable by email,
# and wants their title as part of their full name display
class Manager < Employee

	attr_accessor :title, :email

	def initialize(first_name, last_name, title, email)
		super(first_name, last_name)
		@title = title
		@email = email
	end

	def contact
		self.email
	end

	def full_name
		"#{self.first_name} #{self.last_name} #{self.title}"
	end
end

# A marketer can be contacted via twitter
# but is fine with the default name display
class Marketer < Employee
	attr_accessor :twitter

	def initialize(first_name, last_name, twitter)
		super(first_name, last_name)
		@twitter = twitter
	end

	def contact
		self.twitter
	end
end

bill_lumberg = Manager.new("Bill", "Lumberg", "Boss", "blumby@someco.com")

puts bill_lumberg.full_name
puts bill_lumberg.contact

jan_sweden = Marketer.new("Jan", "Sweden", "@jansweed")

puts jan_sweden.full_name
puts jan_sweden.contact

joe_swanson = Employee.new("Joe", "Swanson")

puts joe_swanson.full_name