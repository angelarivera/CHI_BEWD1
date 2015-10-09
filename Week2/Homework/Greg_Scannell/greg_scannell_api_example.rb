require 'rest-client'

# returns the JSON response containing all stories
response = RestClient.get 'http://mashable.com/stories.json'

# Turn the JSON response into a Ruby 
parsed_response = JSON.parse(response)

new_stories = parsed_response['new']

new_stories.each do |story|
	puts "Title: #{story['title']}"
	puts "Author: #{story['author']}"
	puts "Content: #{story['content']['plain']}"
	puts "=============================\n\n"
end

