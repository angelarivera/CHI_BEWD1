#Person Class.
class Person

#first you have to have the attr_accessor
  attr_accessor :name, :credit_score, :gender #these are the class-level variables

#next we have to initialize, so that all of our variables will be required 
  def initialize(name, credit_score, gender) #params in the () are the methods of the initializer
    #@ = the attributes of the class. These correspond to the class-level variables above and they _have_ to match.
    @name = name
    @credit_score = credit_score
    @gender = gender
  end
end

