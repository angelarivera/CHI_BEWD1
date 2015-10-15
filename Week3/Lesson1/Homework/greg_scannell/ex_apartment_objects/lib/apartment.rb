#Apartment class.
class Apartment
  attr_accessor :name, :apt_sqft, :apt_bedrooms, :apt_bathrooms, :renter

  def initialize(name, apt_sqft, apt_bedrooms, apt_bathrooms, renter=[])
    @name = name
    @apt_sqft = apt_sqft
    @apt_bedrooms = apt_bedrooms
    @apt_bathrooms = apt_bathrooms
    @renter = renter
  end

  def rent
    @rent
  end

  def rent=(number)
    @rent = number
  end
end
