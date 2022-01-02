# Question 3

# In other practice problems, we have looked at how the scope of variables affects the modification of one "layer" when they are passed to another.

# To drive home the salient aspects of variable scope and modification of one scope by another, consider the following similar sets of code.

# What will be printed by each of these code groups?

# A)

# def mess_with_vars(one, two, three) # one is a local variable copy that points to the same String object "one" as the variable one initialized in the outer scope. Same for two and three.
#   one = two # method variable one now is reassigned to point to the same String object as local method variable two and outer local variable two
#   two = three # method variable two now is reassigned to point to the same String object as method local variable three and outer local variable three 
#   three = one#  method local variable now points to the same String object as outer local variable two 
# end

# one = "one" # points to String object "one"
# two = "two" # points to String object "two"
# three = "three" # points to String object "three"

# mess_with_vars(one, two, three)

# puts "one is: #{one}" # => "one"
# puts "two is: #{two}" # => "two"
# puts "three is: #{three}" # => "three"

# # assignment and reassignment do not mutate the caller

# B)

# def mess_with_vars(one, two, three) # method scope variables pointing to the same String objects as those which were initialized in the outer scope
#   one = "two" # one reassigned to a new String object containing "two"
#   two = "three" # as above but for two and "three"
#   three = "one" # as above but for three and "one"
# end

# one = "one"
# two = "two"
# three = "three"

# mess_with_vars(one, two, three)

# puts "one is: #{one}" # => 'one'
# puts "two is: #{two}" # => 'two'
# puts "three is: #{three}" # => 'three'

# assignment and reassignment do not mutate the caller

# C)

def mess_with_vars(one, two, three) # method variables initialized and pointing to the same respective String objects as in the outer scope
  one.gsub!("one","two") # mutating call that replaces "one" with "two" within the String object. one in the outer scope and within this method now would return "two"
  two.gsub!("two","three") # mutating call that replaces "two" with "three" within the String object. two in the outer scope and within this method would return "three"
  three.gsub!("three","one") # mutating call that replaces "three" with "one" within the String object. three in the outer scope and within this method would return "one"
end

one = "one" # local variables initialized with an outer scope pointing to their respective String objects
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}" # => 'two'
puts "two is: #{two}" # => 'three'
puts "three is: #{three}" # => 'one'