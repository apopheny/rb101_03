# Question 2

# What is the result of the last line in the code below?

greetings = { a: 'hi' }
informal_greeting = greetings[:a] # => "hi"
informal_greeting << ' there' # => "hi there"

puts informal_greeting  #  => "hi there"
puts greetings # { a: 'hi there'}. The value at key a: for Hash object greetings points to an object containing the string 'hi'. informal_greeting is initialized and assigned to point to this same object. << mutates that object to be 'hi there', which mutates the value for the key in Hash greetings as well 
