#Sharing Behavior and Variables

# Create an employee class.
# This is the base class the others will inherit from
# Employees have a first name attr, last name attr, and
# a full name method.
class Employee
	attr_accessor  :first_name, :last_name

	def initialize(fname, lname)
		@first_name = fname
		@last_name = lname
	end

	def full_name
		"#{self.first_name} #{self.last_name}" 
	end
end

# A manager is contactable by email,
# and wants their title as part of their full name display
class Manager < Employee
	attr_accessor :title, :email

	def initialize(fname, lname, title, email)
		super(fname, lname)
		@title = title
		@email = email
	end

	def contact
		self.email #referencing accessor, otherwise could be @email
	end

	def full_name
		"#{self.first_name} #{self.last_name}, #{self.title}" #first_name is accessible from the Employee superclass
	end
end

# A marketer can be contacted via twitter
# but is fine with the default name display
class Marketer < Employee
	attr_accessor :twitter

	def initialize(fname, lname, twitter)
		super(fname, lname)
		@twitter = twitter
	end

	def contact
		self.twitter
	end

	# don't need this because it's already defined from the Employee superclass
	# def full_name
	# 	"#{self.first_name} #{self.last_name}"
	# end

end


bill_lumburg = Manager.new("Bill", "Lumburg", "Boss", "bl@mail.net")
puts bill_lumburg.full_name
puts "Preferred contact: " + bill_lumburg.contact
puts "\n"

jan = Marketer.new("Jan", "Smith", "@jan")
puts jan.full_name
puts "Preferred Contact: " + jan.contact
puts "\n"

joe = Employee.new("Joe", "David")
puts joe.full_name

