#Apartment class.
class Apartment
	attr_accessor :name, :apt_sqft, :apt_bedrooms, :apt_bathrooms, :apartment

	def initialize (name, apt_sqft, apt_bedrooms, apt_bathrooms)
		@name = name
		@apt_sqft = apt_sqft
		@apt_bedrooms = apt_bedrooms
		@apt_bathrooms = apt_bathrooms
		@aptartment = apartment
	end

	def to_s
		"#{@name}"
	end

	def renter
		@renter
	end

	def renter=(renter)
		@renter = renter
	end

	def rent
		@rent
	end

	def rent=(rent)
		@rent = rent
	end

	
	def unit_rented
		@unit_rented
	end

	def unit_rented=(unit_rented)
		@unit_rented = unit_rented
	end

end
