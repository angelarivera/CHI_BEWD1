#Building Class
class Building
<<<<<<< HEAD

=======
  attr_accessor :building_name, :building_address, :apartments

  def initialize(building_name, building_address, apartments=[])
    @building_name = building_name
    @building_address = building_address
    @apartments = apartments
  end

  def view_apartments
    @apartments.each do |apartment|
      puts "#{apartment.name} | #{apartment.apt_sqft}"
    end
  end
>>>>>>> 481521fde066e74822b9af9081b575ef96939b3c
end
