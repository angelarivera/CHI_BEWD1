#Apartment class.
class Apartment
<<<<<<< HEAD

=======
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
>>>>>>> 481521fde066e74822b9af9081b575ef96939b3c
end
