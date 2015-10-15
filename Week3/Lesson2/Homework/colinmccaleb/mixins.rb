module Upvotable
  def upvote!
    @upvote += 1
  end

  def downvote!
    @upvote -= 1
  end
end

#if it's in an external file, this will not work but demonstrates syntax. This looks for upvotes.rb in the same folder.
# require_relative 'upvotes'
#end external file reference

class Photo
  attr_reader :photographer, :resolution, :upvotes

  include Upvotable

  def initialize(photographer, resolution)
    @photographer = photographer
    @resolution = resolution
    @upvotes = 1
  end
end

class Story
  attr_reader :title, :author, :upvotes

  include Upvotable

  def initialize(title, author)
    @title = title
    @author = author
    @upvotes = 1
  end
end

story = Story.new ("title", "author")
story.upvote! 
puts story.upvotes

photo = Photo.new ("photoname", "reallybigresolution")
photo.downvote!
puts story.downvotes
