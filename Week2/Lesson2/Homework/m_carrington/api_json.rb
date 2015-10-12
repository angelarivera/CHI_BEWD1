require 'rest-client'
require 'json'

#Returns the JSON respoonse containing all stories
response = RestClient.get 'http://mashable.com/stories.json'

#Turn the response into a ruby hash
parsed_response = JSON.parse(response)


new_stories = parsed_response['new']

new_stories.each do |story|
	puts "Title: #{story['title']}"
	puts "Author: #{story['author']}"
	puts "Content: #{story['content']['plain']}"
	puts "=====================================\n\n"
end

# 100% right.
