#Apartment class.
class Apartment
#first you have to have the attr_accessor
  attr_accessor :name, :apt_sqft, :apt_bedrooms, :apt_bathrooms, :rent, :renter #these are the class-level variables

#next we have to initialize, so that all of our variables will be required 
  def initialize(name, apt_sqft, apt_bedrooms, apt_bathrooms, rent=0, renter=[]) #params in the () are the methods of the initializer
  	# to set the default value of a number, use '=0'
    #@ = the attributes of the class. These correspond to the class-level variables above and they _have_ to match.
    @name = name
    @apt_sqft = apt_sqft
    @apt_bedrooms = apt_bedrooms
    @apt_bathrooms = apt_bathrooms
    @rent = rent
    @renter = renter
  end

end
