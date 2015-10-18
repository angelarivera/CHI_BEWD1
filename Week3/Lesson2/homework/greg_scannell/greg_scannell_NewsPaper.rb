class NewsPaper
attr_accessor :stories

  def initialize
    @stories = []
  end

  def self.generate_random_story
    "This random event happened on day #{rand(28)} of this month."
  end

  def add_story(story)
    # the below code is the same as: @stories << story
    self.stories << story
  end
end
story = NewsPaper.generate_random_story #=> "This random event happened on day 20 of this month." 

paper = NewsPaper.new 
paper.add_story(story) 

p paper.stories #=> ["This random event happened on day 20 of this month."]