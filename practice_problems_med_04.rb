# Question 4

# To drive that last one home...let's turn the tables and have the string show a modified output, while the array thwarts the method's efforts to modify the caller's version of it.

def tricky_method_two(a_string_param, an_array_param)
  a_string_param << 'rutabaga' # a_string_param and my_string point to the same object which is now mutated to "pumpkinsrutabaga"
  an_array_param = ['pumpkins', 'rutabaga'] # an_array_param and my_array no longer point to the same object, as an_array param has been reassigned to a new Array object containing ['pumpkins', 'rutabaga']
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method_two(my_string, my_array)

puts "My string looks like this now: #{my_string}" # since the String object referenced by my_string and a_string_param has been mutated this returns => "pumpkinsrutabaga"
puts "My array looks like this now: #{my_array}" # since the Array referenced by my_array and (before reassignment) an_array_param has not been mutated, it remains ['pumpkins']