99.downto(1) do |num|
	if num > 1
	puts "#{num} bottles of beer on the wall"
	puts "#{num} bottles of beer!"
	puts "You take one down and pass it around,"
	puts "#{num-1} bottles of beer on the wall"
	else
		puts "#{num} bottle of beer on the wall"
		puts "#{num} bottle of beer!"
		puts "You take one down and pass it around,"
		puts "No more bottles of beer on the wall"
	end
end 



