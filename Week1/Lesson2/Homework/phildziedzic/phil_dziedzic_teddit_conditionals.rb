# Teddit Contionals - Starter Code.

# Let's add a new Teddit feature. Upvotes!
# Complete the application below. 
# Where you see comments (lines that begin with #) replace it with code so that the program works.

# get input from user
def get_input
	gets
end

def calculate_upvotes(story, category)
    # Write code so that:
    def upvotes
        # If the Story is about cats multiply the upvotes by 5
        if category.include "cats"
        	upvotes = upvotes * 5
    	   end
        # If the Story is about bacon multiply the upvotes by 8
        if category.include "bacon"
        	upvotes = upvotes * 8
    	  end
        # If the Story is about Food it gets 3 times the upvotes.
        if category.include "Food"
        	upvotes = upvotes * 3
    	  end
    puts upvotes
end

puts "Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!"
puts "Please enter a News story:"
story = get_input
puts "Please give it a category:"
category = get_input
upvotes = calculate_upvotes(story, category)
puts "New story added! #{story}, Category: #{category.capitalize}, Current Upvotes: #{upvotes}"

## FEEDBACK
# Good work. This is almost right. A few problems.
# First, keep track of your indentation. If its consistent you'll
# be able to catch easy mistakes like a missing `end` keyword.
# Also, you can't define a method inside of another method. Ask youself
# why you're defining methods. It should be because there's a block of code
# that's pretty generic and can be reused. You can call a method inside of another
# method but you can't *define* a method within another method.
