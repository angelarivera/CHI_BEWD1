# Employees have a first name, last name
# and a full name
class Employee
	attr_accessor :first_name, :last_name 
	def initialize(first_name, last_name)
		@first_name = first_name
		@last_name = last_name 
	end

	def full_name 
		"#{@first_name} #{@last_name}"
	end 
end

# sam = Employee.new
# sam.first_name = "Sam"

# Managers want their title in their full name output
# and want to be contacted via email

class Manager < Employee 
	attr_accessor :title, :email

	def initialize(first_name, last_name, title, email) 
		@title = title 
		@email = email 
		super(first_name, last_name)
	end 

	def full_name 
		"#{@hirst_name} #{@last_name} / #{@title}"
	end

	def contact
		@email
	end
end 

# Didn't define first name or last name because it automatically inherits those.
# Can have any number of arguments within your initialize; 
# can be more that what is listed in your attributes
# Super method = method in ruby, calls the same method from 
# (SUPER continuted) the parent class that its currently in
# overwritten method, of the same name as the parent, but has different things input in it
# EX of Overwritten method = managers needing full name with title & contact 

# Marketers don't need any special full name output
# but they want to be contacted via their Twitter handle 

class Marketer < Employee
	attr_accessor :Twitter

	def initialize (first_name, last_name, twitter)
		@twitter = twitter
		super(first_name, last_name)
	end 

	def contact 
		@twitter 
	end 
end 


Beyonce = Manager.new("Beyonce", "Z", "Queen of the World", "QueenB@gmail.com")
puts "#{Beyonce.full_name} is a #{Beyonce.title}. You can contact her at #{Beyonce.contact}"

Nicki = Marketer.new("Nicki", "Minaj", "@bossab")
puts "#{Nicki.full_name} is a Boss Ass Bitch. You can contact her at #{Nicki.contact}"

# < = extends function
# How one class can inherit from another and why it would be useful.
# We have three employees. One is a manager and one is a marketer. 