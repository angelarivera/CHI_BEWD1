require 'rest-client'

# Returns the JSON response containing all stories
response = RestClient.get 'http://mashable.com/stories.json'

# Turn the response into a Ruby hash
parsed_response = JSON.parse(response)

new_stories = parsed_response['new']

new_stories.each do |story|
	puts "Title: #{story['title']}"
	puts "Author: #{story['author']}"
	puts "Content: #{story['content']['plain']}"
	puts "=================\n\n"
end