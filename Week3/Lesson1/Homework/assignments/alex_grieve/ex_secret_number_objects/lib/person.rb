# Person class contains the following methods:
#   Initialize: 
#       - Initialize and set defaults 
#   to_s: 
#       - print the player's the name in a graceful way

class Person
	attr_accessor :name

	# Receive the name from the user
	def initialize(name)
		@name = name
	end

	# Gracefully return the name if asked
	def to_s
		"#{self.name}"
	end
end
