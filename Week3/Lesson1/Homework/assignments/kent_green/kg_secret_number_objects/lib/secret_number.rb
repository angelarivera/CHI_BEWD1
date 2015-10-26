class SecretNumber
#generate the secret number
  attr_accessor :secret_number

#next we have to initialize, so that all of our variables will be required 
  def initialize(secret_number=[1..10].sample) #sample should give me a random number
    @secret_number = secret_number
  end
end






