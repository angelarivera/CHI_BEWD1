# Global hash to archive the stories
$story_archive = {}

# Get the user's input
def get_input
  input = gets
  return input
end

# Add categories to the archive
def add_category(storyDict, category)
	if not storyDict[category]
		storyDict[category] = []
		result = "New Category"
	else
		result = "Existing Category"
	end

	# Returns if the category was new or not
	return result
end

# Add a story to the archive
def add_story(storyDict, category, story)
	# Variable to help determine if story was existing
	existing = 0

	# If we have not seen this category before, add the category to the dictionary
	if not storyDict[category]
		add_story(storyDict, category)
	end

	# If we have seen the story before, increase the upvotes accordingly
	for item in storyDict[category]
		if item[0] == story
			item[1] = upvote(item[1], category)
			existing = 1
			result = ["Existing Story", item[1]]
			break
		end
	end 

	# If the story is new, default to one upvote and multiply accordingly
	if existing == 0
		votes = upvote(1, category)
		storyDict[category].push([story, votes])
		result = ["New Story", votes]
	end

	# Returns whether the story is new or not and the current upvote total
	return result
end

# Method that calulates upvotes based on category
def upvote(current, category)
	if category.capitalize == "Cats"
		current = current * 5
	elsif category.capitalize == "Bacon"
		current = current * 8
	elsif category.capitalize == "Food"
		current = current * 3
	end

	# Returns the number of upvotes
	return current
end 


def calculate_upvotes(story, category)
	# Add category to archive
	category_result = add_category($story_archive, category)

	# Add story 
	story_result = add_story($story_archive, category, story)

	# Return the numner of upvotes
	return story_result
end

# Welcome the user
puts "Welcome to Teddit! a text based news aggregator. Get today's news tomorrow!"

# Loop through to add more stories or increase upvotes
story = ""
while story != "q"
	puts "\nPlease enter a News story. (q to quit)"
	story = get_input.strip()

	# User input "q" break the loop
	if story == "q"
		puts "Goodbye!"
		next
	end

	puts "Please enter a category:"
	category = get_input.strip()

	upvotes = calculate_upvotes(story, category)
	puts "#{upvotes[0]} story added! #{story}, Category: #{category.capitalize}, Current Upvotes: #{upvotes[1]}"
end

