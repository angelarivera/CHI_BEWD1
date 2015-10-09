#Sharing Behavior and Variables

# Create an employee class.
# This is the base class the others will inherit from
# Employees have a first name attr, last name attr, and
# a full name method.
class Employee
 attr_accessor :first_name, :last_name #this is establishing getters and setters

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
 attr_accessor :first_name, :last_name, :title, :email

 def initialize(title, email)
   @title = title
  @email = email
 end

 def contact
  @email
end

# A marketer can be contacted via twitter
# but is fine with the default name display
class Marketer < Employee


end
