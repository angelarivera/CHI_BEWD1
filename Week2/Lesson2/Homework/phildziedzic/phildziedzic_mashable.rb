require 'rest-client'
require 'json'


#returns JSON with all stories from Mashable
response = RestClient.get "http://mashable.com/stories.json"

#turn response into Ruby hash
parsed_response = JSON.parse(response)

new_stories = parsed_response["new"]

new_stories.each do |story|
	puts "Title: #{story['title']}"
	puts "Author: #{story['author']}"
	puts "Content: #{story['content']['plain']}"
	puts "===================================="
end

# Excellent work. Good job.
