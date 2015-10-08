#def multiplier (x,y)
#	multiplier=x*y
#	if multiplier>50 
#		puts "greater than 50"
#	else "less than 50"
#end
#end 

#how to make a hash 1 (using symbols)
my_hash={
	name:"matt", 
	phone: "7032179493", 
	email: "mhb@yahoo.com"
}
#how to make a hash 2 (using symbols)
my_hash={
	:name=>"matt", 
	:phone=>"7032179493", 
	:email=> "mhb@yahoo.com"
}

#how to make a hash 3 (using strings)
my_hash2={
	"name"=> "matt", 
	"phone"=>"7032179493", 
	"email"=> "mhb@yahoo.com"}

#how to make a hash 3
my_hash={
	"name"=>"matt"
}


#how to iterate over the hash
my_hash.each do |key,vlaue|
	puts "#{key}: #{value}"