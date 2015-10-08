# Create a hash with the following keys:
#
# - name
# - phone
# - email

my_hash = {
  name: "Matt",
  phone: "123.456.7899",
  email: "coffeeslug@gmail.com"
}
my_hash[:name]



my_hash = {
  :name => "Matt",
  :phone => "123.456.7899",
  :email => "coffeeslug@gmail.com"
}
my_hash[:name]

my_hash = {
  "name" => "Matt", 
  "phone" => "123.456.7899", 
  "email" => "coffeeslug@gmail.com"
}
my_hash['name']


my_hash = {}
my_hash[:name] = "Matt"
my_hash['name'] = "Matt"


my_hash2.each do |x, y|
  puts "#{x}: #{y}"
end












# Iterate over the hash and output each key value pair
