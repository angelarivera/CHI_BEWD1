#Explaining classes, objects, attr_accessor & load paths.
# => This example is to further highlight objects and classes and the need for attr_acessor (we'll build getters and setters first).
# => Start with a blank document and build.
# => Create other instances of apartment, have them experiment with adding/removing renters.

class Apartment
  attr_accessor :name, :rent, :sqft, :num_bedrooms, :num_bathrooms, :renters

  def initialize(name, rent, sqft, num_bedrooms, num_bathrooms, renters)
    @name = name
    @rent = rent
    @sqft = sqft
    @num_bedrooms = num_bedrooms
    @num_bathrooms = num_bathrooms
    @renters = renters
  end

  def is_occupied?
    @renters.any?
  end

  def to_s
    "#{@name} has #{@sqft} sqft and #{@renters.count} renters."
  end
end

my_apartment = Apartment.new("The Theodore", 800, 1700, 3, 2, nil)
my_apartment.renters = ["Rhonda", "Jodie"]
#OR: my_apartment.renters << 'Gracie'

if my_apartment.is_occupied?
  puts "Apartment is already occupied."
else
  puts my_apartment
  puts "This apartment is for rent. Can you afford $#{my_apartment.rent} a month?"
end
