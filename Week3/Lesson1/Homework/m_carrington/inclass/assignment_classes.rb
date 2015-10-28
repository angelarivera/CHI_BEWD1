class Apartment
	attr_accessor :name, :rent, :sqft, :num_bedrooms, :num_bathrooms, :rentors

	def initialize(neme, sft, num_bedrooms, num_bathrooms, renters)
		@name = name
		@rent = 0
		@sqft = sqft
		@numbedrooms = num_bedrooms
		@num_bathrooms = num_bathrooms
		# @renters = []
		@renters = renters
	end

	def is_occupied?
		@renters.any?
	end

	def to_s
		"#{@name} has #{@sqf} sqft and #{@renters.count} renters."
	end
end

my_apartment = Apartment.new("The Theodore", 800, 1700, 3, 2, nil)

my_apartment.renters = ['Rhonda', 'Jodie']

if my_apartment.is_occupied?
	puts "This apartment is not for rent"
else
	puts my_apartment
	puts "This apratment is for rent, ask your broker for more details"
end