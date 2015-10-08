# Write a program that prints 99 bottles of beer on the wall.
# The song starts with 
# 99 bottles of beer on the wall
# 99 bottles of beer!
# You take one down and pass it around,
# 98 bottles of beer on the wall!
#
# And ends with 
# 1 bottle of beer on the wall
# 1 bottle of beer!
# You take one down and pass it around,
# No more bottles of beer on the wall :-(


count = 99

99.downto(1) do |number|
	if count > 1
		puts "#{number} bottles of beer on the wall"
		puts "#{number} bottles of beer!"
		puts "You take one down and pass it around,"
		count -= 1
		puts "#{number} bottles of beer on the wall!"
	else
		puts "#{number} bottle of beer on the wall"
		puts "#{number} bottle of beer!"
		puts "You take one down and pass it around,"
		puts "No more bottles of beer on the wall!"
	end
end