#Building Class
class Building
	attr_accessor :building_name, :building_address, :apartments

	def initialize(building_name, building_address, apartments=[])
		@building_name = building_name
		@building_address = building_address
		@apartments = apartments
	end


	def view_apartments
		puts "Current inventory:"
		@apartments.each do |apartment|
			puts "apartment: #{apartment.name}"
			puts "sqft: #{apartment.apt_sqft} bedrooms: #{apartment.apt_bedrooms} bathrooms: #{apartment.apt_bathrooms}"
			if apartment.unit_rented == "y"
				puts "This apartment is rented."
			else
				puts "This apartment is vacant."
			end
		end

	end

end
