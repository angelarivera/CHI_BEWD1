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
# ==============================

# returns the json response conataining all stories 
response =  RestClient.get 'http://mashable.com/stories.json'

#Turn the response into  Ruby hash
parsed_response = JSON.parse(response)

new_stories = parsed_response['new']

new_stories.each do |story|
	puts "Title: #{story['title']}"
	puts "Author: #{story['author']}"
	puts "Content: #{story['content']['plain']}"
	puts "================================\n\n"
end
