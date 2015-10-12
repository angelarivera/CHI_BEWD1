module Upvotable
  def upvote! #this is one method of the module
    @upvote += 1
  end

  def downvote! #this is another method of the module. functionality goes here. 
    @upvote -= 1
  end
end

#if module wasn't in the same file, you'd have to require it w/ require_relative
class Photo
  attr_reader :photographer, :resolution, :upvotes

  include Upvotable #this tells you to get the Module you want

  def initialize(photographer, resolution)
    @photographer = photographer
    @resolution = resolution
    @upvotes = 1
  end
end

class Story
  attr_reader :title, :author, :upvotes

  include Upvotable #again, this tells you to get the Module you want

  def initialize(title, author)
    @title = title
    @author = author
    @upvotes = 1
  end
end

story = Story.new 
story.upvote! 

photo = Photo.new 
photo.downvote!
