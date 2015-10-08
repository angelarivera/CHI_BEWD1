#!/usr/bin/env ruby

# INSTRUCTIONS:
# =============
# 1. Copy the contents of this file into
#    a new file in a folder named after yourself
#    within this week's Homework folder.
# 2. Using the rest-client gem, request the latest (new)
#    stories from Mashable (http://mashable.com/stories.json)
#    and then output each story's title, author, and content
#    in the terminal. For better readability, output a line
#    of dashes between each story like this: ---------------
# TIP: See the rest-client docs if you're stuck: https://github.com/rest-client/rest-client

# Make sure you have installed the rest-client and JSON
# gems with:
#
# gem install rest-client
# gem install json

require 'rest-client'
require 'json'

# Your work goes here.

# Return JSON response
response = RestClient.get 'http://mashable.com/stories.json'

# Turn the response to a ruby hash
parsed_response = JSON.parse(response)

# Store the "KEY_YOU_WANT" (parsed) from the JSON response into a ruby array
new_stories = parsed_response['new']

hot_three = parsed_response['hot']

# Iterate over the array to output Title, Author, Content
new_stories.each do |story|
	puts "Title: #{story['title']}"
	puts "Author: #{story['author']}"
	puts "Content: #{story['content']['plain']}"
	puts "================================================\n\n"
end

puts "Here are the hot three stories on Mashable"
puts "================================================\n\n"

hot_three[0..2].each do |story|
	puts "Title: #{story['title']}"
	puts "Author: #{story['author']}"
	puts "Content: #{story['content']['plain']}"
	puts "================================================\n\n"
end