#Building Class
class Building
#first you have to have the attr_accessor
  attr_accessor :building_name, :building_address, :apartments #these are the class-level variables

#next we have to initialize, so that all of our variables will be required 
  def initialize(building_name, building_address, apartments=[]) #params in the () are the methods of the initializer
    #@ = the attributes of the class. These correspond to the class-level variables above and they _have_ to match.
    @building_name = building_name
    @building_address = building_address
    @apartments = apartments
  end
end
