#Apartment class.
class Apartment
	attr_accessor :name, :apt_sqft, :apt_bedrooms, :apt_bathrooms, :renter

	def initialize(a, b, c, d, e=[])
		@name = a
		@apt_sqft = b
		@apt_bedrooms = c
		@apt_bathrooms = d
		@renter = e
	end

	def rent
		@rent
	end

	def rent=(f)
		@rent = f
	end
end