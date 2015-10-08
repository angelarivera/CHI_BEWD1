# Teddit Contionals - Starter Code.

# Let's add a new Teddit feature. Upvotes!
# Complete the application below. 
# Where you see comments (lines that begin with #) replace it with code so that the program works.

def get_input
 gets
end

# set upvotes
upvotes = 1

def calculate_upvotes(story, category)
    if story.include? "cats"
        upvotes * 5
    elsif story.include? "bacon"
        upvotes * 8
    elsif story.include? "food"
    	upvotes * 3
    else 
    	upvotes * 1
end

puts "Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!"
puts "Please enter a News story:"
story = get_input
puts "Please give it a category:"
category = get_input
upvotes = calculate_upvotes(story, category)
puts "New story added! #{story}, Category: #{category.capitalize}, Current Upvotes: #{upvotes}"
end