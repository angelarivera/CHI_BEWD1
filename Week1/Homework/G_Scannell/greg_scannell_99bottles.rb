## lyrics to 99 bottles of beer
99.downto(1) do |n|
	if n > 1
	puts "#{n} bottles of beer on the wall 
	#{n} bottles of beer! take one down, 
	pass it around"
	else 
		puts "#{n} bottle of beer on the wall 
		#{n} bottle of beer, you take it down pass
		it around and no more bottles of beer on the wall!"
	end
end
