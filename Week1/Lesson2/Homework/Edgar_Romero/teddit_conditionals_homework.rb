def get_input
  #Get input from the user.
  gets.chomp.to_s
end

def calculate_upvotes(story, category)
    # Write code so that:
    upvote = 1
        # If the Story is about cats multiply the upvotes by 5
    if category == 'cats'
        upvote * 5
        # If the Story is about bacon multiply the upvotes by 8
    elsif category == 'bacon'
        upvote * 8
        # If the Story is about Food it gets 3 times the upvotes.
    elsif category == 'food'
        upvote * 3
    else
        upvote * 0
    end
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
# Excellent work! There's really nothing I'd change about this. Good work.
