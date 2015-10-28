class Animal
  attr_accessor :name, :appendages

  def initialize(name, appendages)
    @name = name
    @appendages = appendages
  end
end

class Otter < Animal
  attr_accessor :fur, :cuteness_level

  def initialize(name, appendages, fur, cuteness_level)
    super(name, appendages)
    @fur = fur
    @cuteness_level = cuteness_level
  end

  def self.make_noises
    "Kitter kit kit"
  end

  def to_s
    if @fur
      has_fur = "has fur"
    else
      has_fur = "does not have fur"
    end
    "#{@name} has #{@appendages} appendages, #{has_fur}, and its cuteness level is #{@cuteness_level}"
  end
end

class Elephant < Otter
end

puts Otter.make_noises
puts Elephant.make_noises

otter = Otter.new('Jerry', 5, true, 12)

puts otter
