#Sharing Behavior and Variables

# Create an employee class.
# This is the base class the others will inherit from
# Employees have a first name attr, last name attr, and
# a full name method.
class Employee


end

# A manager is contactable by email,
# and wants their title as part of their full name display
class Manager < Employee


end

# A marketer can be contacted via twitter
# but is fine with the default name display
class Marketer < Employee


end
