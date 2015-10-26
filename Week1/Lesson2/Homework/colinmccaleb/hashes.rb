# I just called a function that got a list
# of students from a database. Now I want to
# loop over them and show details about each student
# on the screen.
#
# This is the type of thing that's very common
# in web applications.

students = [
  {
    name: 'Matt',
    klass: 'BEWD1',
    grade: 99.99
  },
  {
    name: 'Greg',
    klass: 'BEWD2',
    grade: 95.7
  },
  {
    name: 'Angie',
    klass: 'BEWD1',
    grade: 98
  }
]

some_array =["blue", "green", "red", "purple"]
some_array.each do |color|
  puts color
end

# Now show the more common syntax
students.each do |student|
  puts "Name: #{student[:name]}"
  puts "Class: #{student[:klass]}"
  puts "Grade: #{student[:grade]}"
  puts "========================"
end

# Show iterating over key value pairs
students.each do |student|
  student.each do |key, value|
    puts "#{key}: #{value}"
  end
  puts "==================="
end