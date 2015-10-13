# This example shows how you can have
# multiple instances of the same class
# each having their own internal state.
#
# "State" means having their own set
# of internal values. So even though each
# variable at the end is one instance of the
# same SecretNumber class, they each have
# their own values for the arg and arg2
# attributes.
class SecretNumber
    attr_accessor :arg, :arg2

    def intialize(arg, arg2)
        @thing_to_add = 20
        @arg = arg
        @arg2 = arg2
    end

    def self.generate
        rand(10) + @thing_to_add
    end
end


number = SecretNumber.new(1, 5)
another = SecretNumber.new(10, 2)
a_third = SecretNumber.new(50, 100)


number.arg #=> 1
another.arg #=> 10
a_third.arg #=> 50
