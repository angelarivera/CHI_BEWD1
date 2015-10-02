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

# Explain this short syntax...
students.each { |e|  }

# Now show the more common syntax
students.each do |student|
  #
end

# Show iterating over key value pairs
students.each do |student|
  student.each do |k, v|
    # show outputting the key and value in a loop
    # within another loop. INCEPTION!
  end
end
