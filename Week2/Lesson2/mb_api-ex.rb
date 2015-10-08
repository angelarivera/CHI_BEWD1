require 'rest-client'

#will get all stories in json form
response = RestClient.get 'http://mashable.com/stories.json'

#turn response into a ruby hash
parsed_response= JSON.parse(response)

new_stories=parsed_response['new']

new_stories.each do |story|
	puts "title: #{story['title']}"
	puts "author: #{story['author']}"
	puts "Content: #{story['content']['plain']}"
	puts "----------------------------------------------/n/n"
end 