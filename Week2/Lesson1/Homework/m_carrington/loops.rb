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
count_less = count - 1
while count > 1
	puts "#{count} bottles of beer on the wall!\n#{count} bottles of beer!\nYou take one down and pass it around,\n#{count_less} bottles of beer on the wall!"
	count -= 1
	count_less -= 1
	if count == 1
		puts "1 bottle of beer on the wall!"
		puts "1 bottle of beer!"
		puts "You take one down and pass it around,"
		puts "No more bottles of beer on the wall :–("
	end
end