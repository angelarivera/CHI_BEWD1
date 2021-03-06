##
# Boolean Code Demo
# =================
# For each of the examples written out in
# English below, we'll write an equivalent
# Ruby expression to match it and output the result
##

puts "Is 7 greater than 8?"
  puts 7 > 8

puts "Is 8 x 77 greater than 600?"
  puts 8 * 77 > 700

puts "Is 1 equal to 7 - 6 OR true?"
  puts 1 = 7 - 6 || true

puts "Is 77 greater than 50 AND 88 / 3 less than 30?"
  puts 77 > 50 && 88 / 3 > 30

puts "Is the length of the word 'wheelbarrow' more than 10 characters long?"
  puts "wheelbarrow".length > 10

puts "Are the amount of seconds in an hour greater than or equal to 3000?"
  puts 60 * 60 >= 3000

puts "Does the word 'slaughter' include the word laughter?"
  puts "slaughter".include("laughter")