#Building Class

class Building
	attr_accessor :building_name, :building_address, :apartments

	def initialize(a, b, c=[])
		@building_name = a
		@building_address = b
		@apartments = c
	end

	def view_apartments
		@apartments.each do |apartment|
			puts "Apartment: #{apartment.name}"
			puts "sqft: #{apartment.apt_sqft}  |  Bedrooms: #{apartment.apt_bedrooms}  |  Bathrooms: #{apartment.apt_bathrooms}"
		end
	end
end
