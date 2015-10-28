# Building.new(building_name, building_address)

class Building
	attr_accessor :building_name, :building_address, :apartments

	def initialize(building_name, building_address)
		@building_name = building_name
		@building_address = building_address
		@apartments = []
	end

	def view_apartments
		# Why is this requiring me to use .to_S?
		# I thought the override would allow me to use #{apartments}?
		apartments.each { |apartment| puts apartment.to_s }
	end 

end
