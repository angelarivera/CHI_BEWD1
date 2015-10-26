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
 attr_accessor :title, :email

 def initialize(fname, lname, title, email)
  super(fname, lname)
  @title = title
  @email = email
 end

 def contact
  self.email
 end

 def full_name
  "#{self.first_name} #{self.last_name}, #{self.title}"
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

 def full_name
  "#{self.first_name} #{self.last_name}"
 end
end

bill_lumberg = Manager.new("Bill", "Lumberg", "Boss", "lumberg@initech.com")
puts bill_lumberg.full_name
puts bill_lumberg.contact

april_oneil = Marketer.new("April", "Oneil", "@april_oneil")
puts april_oneil.full_name
puts april_oneil.contact

alex_grieve = Employee.new("Alex", "Grieve")
puts alex_grieve.full_name