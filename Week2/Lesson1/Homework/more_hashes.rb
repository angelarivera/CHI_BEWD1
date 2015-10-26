#Create a hash with the following keys:
#
# - name
# - phone
# - email

my_hash = {
	name: "Matt",
	phone: "123.456.7899",
	email: "email@gmail.com"
}

my_hash2 = {"name" => "Matt", "phone" => "123.456.7899", "email" => "email@gmail.com"}

my_hash = {
	:name => "Matt",
	:phone => "123.456.7899",
	:email => "email@gmail.com"

}

my_hash2.each do |x,y|
	puts "#{x}: #{y}"
end