require_relative 'apartment'my_apartment = Apartment.new("The Theodore", 800, 1700, 3, 2, nil)

my_apartment = Apartment.new("The Theodore", 800, 1700, 3, 2, nil)
#How would you add renters to my_apartment?
my_apartment.renters = ['Peter', 'Andre']
#OR: my_apartment.renters << 'Gracie'

if my_apartment.is_occupied?
  puts "This apartment is not for rent"
else
  puts my_apartment
  puts "This apartment is for rent, ask your broker for more details"
end