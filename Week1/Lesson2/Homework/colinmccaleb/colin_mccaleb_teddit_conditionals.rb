# Teddit Contionals - Starter Code.

# Let's add a new Teddit feature. Upvotes!
# Complete the application below. 
# Where you see comments (lines that begin with #) replace it with code so that the program works.

def get_input
   gets
end

start_upvotes = 1

def calculate_upvotes(story, category)
    if story.include? "cats" 
    	upvotes = 1 * 6
    elsif story.include? "bacon" 
    	upvotes = 1 * 8
    else story.include? "food"
    	upvotes = 1 * 3
    end
        # If the Story is about cats multiply the upvotes by 5
        # If the Story is about bacon multiply the upvotes by 8
        # If the Story is about Food it gets 3 times the upvotes.

    #For example:
    # "Cats frolic despite tuna shortage" should give you 5 times the upvotes!
end

puts "Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!"
puts "Please enter a News story:"
story = get_input
puts "Please give it a category:"
category = get_input
upvotes = calculate_upvotes(story, category)
puts "New story added! #{story}, Category: #{category.capitalize}, Current Upvotes: #{upvotes}"

## FEEDBACK
# This works as expected but a few things could have been better. When
# you use `gets` for input, you should call `.strip` on that variable to
# remove any white space. Without that the output includes the line break from
# when the user presses Enter to input their answers.
# You also calculate the upvotes correctly but you were actually supposed to
# compare it to the category, not the story. But its not a big deal, you calculated
# the upvotes correctly anyway.
