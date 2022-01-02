# Question 1

# What do you expect to happen when the greeting variable is referenced in the last line of the code below?

if false
  greeting = "hello world"
end

p greeting

# if does not create its own scope, but given truthiness it should evaluate to true, therefore greeting would not be assigned to "hello world", but the expression would be evaluated, and greeting would have a nil assignment