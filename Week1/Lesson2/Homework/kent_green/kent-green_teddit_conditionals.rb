# Teddit Contionals - Starter Code.

# Let's add a new Teddit feature. Upvotes!
# Complete the application below. 
# Where you see comments (lines that begin with #) replace it with code so that the program works.

def print_welcome
 puts "Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!"
end

def story
 	puts "Please enter a News story:"
 	gets.strip
end

def category
	puts "Please give it a category:"
    gets.strip
end

# set upvotes
upvotes = 1

def calculate_upvotes(story, category)
    if category.include? "cats"
        calculate_upvotes * 5
    elsif category.include? "bacon"
        calculate_upvotes * 8
    elsif category.include? "food"
    	calculate_upvotes * 3
    else 
    	calculate_upvotes * 1
end


upvotes = calculate_upvotes(story, category)
puts "New story added! #{story}, Category: #{category.capitalize}, Current Upvotes: #{upvotes}"
end