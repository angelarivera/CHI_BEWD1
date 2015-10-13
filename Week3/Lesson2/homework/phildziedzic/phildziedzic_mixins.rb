module Upvotable
  def upvote!
    @upvote += 1
  end

  def downvote!
    @upvote -= 1
  end
end

# or if module is in a different file: require_relative '../filename.rb'

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

story = Story.new 
story.upvote! 

photo = Photo.new 
photo.downvote!
