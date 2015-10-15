class Person
#first you have to have the attr_accessor
  attr_accessor :name

  def initialize(name) #params in the () are the methods of the initializer
    #@ = the attributes of the class. These correspond to the class-level variables above and they _have_ to match.
    @name = name
  end
end