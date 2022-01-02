# Question 3

# Let's call a method, and pass both a string and an array as arguments and see how even though they are treated in the same way by Ruby, the results can be different.

# Study the following code and state what will be displayed...and why:

def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga" # the a_string_param no longer points to the same object as my_string as it has been reassigned to "pumpkinsrutabaga"
  an_array_param << "rutabaga" # an_array_param points to the same object as my_array, and the object has been mutated to have an index position 1 of "rutabaga", now ['pumpkins', 'rutabaga']
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}" # => My string now looks like this: pumpkins
puts "My array looks like this now: #{my_array}" # => My array now looks like this ['pumpkins', 'rutabaga']
