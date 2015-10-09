# Teddit Contionals - Starter Code.

# Let's add a new Teddit feature. Upvotes!
# Complete the application below. 
# Where you see comments (lines that begin with #) replace it with code so that the program works.

def get_input
  #Get input from the user.
  gets.strip # LOOK HERE! --> I added the .strip method to remove trailing whitespace, tabs, and newlines
end

def calculate_upvotes(story, category)
  upvotes = 1 # LOOK HERE --> I define upvotes to be 1 by default then...
    # Write code so that:
        # If the Story is about cats multiply the upvotes by 5
    if story.include? "cats"
        	upvotes * 5 # LOOK HERE --> In each conditional, I simply return upvotes * number, no need to
                      #               assign values to a variable because ruby returns the last things that runs in a method
        # If the Story is about bacon multiply the upvotes by 8
    elsif story.include? "bacon"
    	upvotes * 8
        # If the Story is about Food it gets 3 times the upvotes.
    elsif story.include? "Food"
    	upvotes * 3
    else
      upvotes # LOOK HERE --> A final else is needed so that you can return the default upvotes if no conditions match
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
#
# Good work in general but try to think at a lower level. What I mean by that is
# when you're programming, the computer only know what you tell it so you have to
# sort of program as if you're giving instructions to a total idiot. Where that applies
# here is in your `calculate_upvotes` method and the conditional inside of it. You
# do correctly get the input and you're doing your conditional checks almost totally
# correct but you forget that when the user presses Enter the variable holding their
# input contains both the text they entered AND the newline character "\n". So when you
# output the data it goes on multiple lines and looks weird. The other thing you're missing
# is a final else statement in that calculate upvotes method. So when I ran it with
# the story being "my story" and the category being "cats" it output everything correctly
# but the upvotes were missing. I've corrected the code and put comments where I changed things.
#
# I'm not writing so much because you messed up. It's like 95% perfect. I'm just
# being verbose in my explanation because I know you really want to understand how
# data is flowing through your code.
