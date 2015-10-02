# Teddit Contionals - Starter Code.

# Let's add a new Teddit feature. Upvotes!
# Complete the application below. 
# Where you see comments (lines that begin with #) replace it with code so that the program works.

def print_welcome
	puts "Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!"
end

def get_story
  #Get input from the user.
  puts "What's the story?"
  gets.strip
end

def get_category
	puts "What's the category?"
	gets.strip
end

#starts with one upvote? 
start_upvotes = 1

#calculate upvotes 
    # Write code so that:
        # If the Story is about cats multiply the upvotes by 5
        # If the Story is about bacon multiply the upvotes by 8
        # If the Story is about Food it gets 3 times the upvotes.

    #For example:
    # "Cats frolic despite tuna shortage" should give you 5 times the upvotes!

def calculate_upvotes(story, category, start_upvotes)
	if [story, category].include? "cats"
		start_upvotes = start_upvotes * 5
	elsif [story, category].include? "bacon"
		start_upvotes = start_upvotes * 8
	else [story, category].include? "food"
		start_upvotes = start_upvotes * 3
	end
end

#puts "Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!"
print_welcome

#puts "What's the story"
story = get_story

#puts "What's the category"
category = get_category

#calculate current upvotes
upvotes = calculate_upvotes(story, category, start_upvotes)

puts "New story added! #{story}, Category: #{category.capitalize}, Current Upvotes: #{upvotes}"