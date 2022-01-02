# # Question 1

# # Every named entity in Ruby has an object_id. This is a unique identifier for that object.

# # It is often the case that two different things "look the same", but they can be different objects. The "under the hood" object referred to by a particular named-variable can change depending on what is done to that named-variable.

# # In other words, in Ruby, all values are objects...but they are not always the same object.

# # Predict how the values and object ids will change throughout the flow of the code below:

# def fun_with_ids
#   a_outer = 42 # a_outer is initialized and assigned an object id pointing to integer 42
#   b_outer = "forty two" # b_outer is initialized and assigned an object id pointing to string "forty two"
#   c_outer = [42] # c_outer is initialized and is assigned an object id pointing to an array with a zero index of integer 42
#   d_outer = c_outer[0] # d_outer and c_outer[0] point to the same object id

#   a_outer_id = a_outer.object_id # a_outer_id is initialized and assigned an integer value of the object id for a_outer
#   b_outer_id = b_outer.object_id # as above but for b_outer_id and b_outer
#   c_outer_id = c_outer.object_id # as above but for c_outer_id and c_outer
#   d_outer_id = d_outer.object_id # as above but for d_outer_id and d_outer

#   puts "a_outer is #{a_outer} with an id of: #{a_outer_id} before the block." # pointers remain the same
#   puts "b_outer is #{b_outer} with an id of: #{b_outer_id} before the block." # as above
#   puts "c_outer is #{c_outer} with an id of: #{c_outer_id} before the block." # as above
#   puts "d_outer is #{d_outer} with an id of: #{d_outer_id} before the block." # as above
#   puts

#   1.times do
#     a_outer_inner_id = a_outer.object_id # a_outer_inner_id points to a memory location with a value that is the object id of a_outer
#     b_outer_inner_id = b_outer.object_id # b_outer_inner_id points to a memory location with a value that is the object id of b_outer
#     c_outer_inner_id = c_outer.object_id # c_outer_inner_id points to a memory location with a value that is the object id of c_outer
#     d_outer_inner_id = d_outer.object_id # d_outer_inner_id points to a memory location with a value that is the object id of d_outer

#     puts "a_outer id was #{a_outer_id} before the block and is: #{a_outer_inner_id} inside the block."
#     puts "b_outer id was #{b_outer_id} before the block and is: #{b_outer_inner_id} inside the block."
#     puts "c_outer id was #{c_outer_id} before the block and is: #{c_outer_inner_id} inside the block."
#     puts "d_outer id was #{d_outer_id} before the block and is: #{d_outer_inner_id} inside the block."
#     puts

#     a_outer = 22 # a_outer is assigned a different object id that points to a memory location for integer 22
#     b_outer = "thirty three" # b outer is assigned a different object id that points to a memory location for string "thirty three"
#     c_outer = [44] # c_outer is assigned a different object id that points to an array with a 0 index that points to integer 44
#     d_outer = c_outer[0] # d_outer is assigned the same object id as c_outer[0]

#     puts "a_outer inside after reassignment is #{a_outer} with an id of: #{a_outer_id} before and: #{a_outer.object_id} after."
#     puts "b_outer inside after reassignment is #{b_outer} with an id of: #{b_outer_id} before and: #{b_outer.object_id} after."
#     puts "c_outer inside after reassignment is #{c_outer} with an id of: #{c_outer_id} before and: #{c_outer.object_id} after."
#     puts "d_outer inside after reassignment is #{d_outer} with an id of: #{d_outer_id} before and: #{d_outer.object_id} after."
#     puts


#     a_inner = a_outer # a_inner is initialized and assigned the same object id as a_outer
#     b_inner = b_outer # b_inner is initialized and assigned the same object id as b_outer
#     c_inner = c_outer # c_inner is initialized and assigned the same object id as c_outer
#     d_inner = c_inner[0] # d_inner is initialized and assigned the same object id as c_inner[0] and d_outer

#     a_inner_id = a_inner.object_id # a_inner_id is initialized and assigned an object id pointing to the integer value of a_inner's object_id
#     b_inner_id = b_inner.object_id # as above but for b_inner_id and b_inner
#     c_inner_id = c_inner.object_id # as above but for c_inner_id and c_inner
#     d_inner_id = d_inner.object_id # as above but for d_inner_id and d_inner

#     puts "a_inner is #{a_inner} with an id of: #{a_inner_id} inside the block (compared to #{a_outer.object_id} for outer)."
#     puts "b_inner is #{b_inner} with an id of: #{b_inner_id} inside the block (compared to #{b_outer.object_id} for outer)."
#     puts "c_inner is #{c_inner} with an id of: #{c_inner_id} inside the block (compared to #{c_outer.object_id} for outer)."
#     puts "d_inner is #{d_inner} with an id of: #{d_inner_id} inside the block (compared to #{d_outer.object_id} for outer)."
#     puts
#   end

#   puts "a_outer is #{a_outer} with an id of: #{a_outer_id} BEFORE and: #{a_outer.object_id} AFTER the block."
#   puts "b_outer is #{b_outer} with an id of: #{b_outer_id} BEFORE and: #{b_outer.object_id} AFTER the block."
#   puts "c_outer is #{c_outer} with an id of: #{c_outer_id} BEFORE and: #{c_outer.object_id} AFTER the block."
#   puts "d_outer is #{d_outer} with an id of: #{d_outer_id} BEFORE and: #{d_outer.object_id} AFTER the block."
#   puts

#   puts "a_inner is #{a_inner} with an id of: #{a_inner_id} INSIDE and: #{a_inner.object_id} AFTER the block." rescue puts "ugh ohhhhh" # rescue is procced by exception caused by unavailable variable a_inner and a_inner_id due to their initialization within a .times method which creates its own local scope, unlike until, for, and while loops 
#   puts "b_inner is #{b_inner} with an id of: #{b_inner_id} INSIDE and: #{b_inner.object_id} AFTER the block." rescue puts "ugh ohhhhh"
#   puts "c_inner is #{c_inner} with an id of: #{c_inner_id} INSIDE and: #{c_inner.object_id} AFTER the block." rescue puts "ugh ohhhhh"
#   puts "d_inner is #{d_inner} with an id of: #{d_inner_id} INSIDE and: #{d_inner.object_id} AFTER the block." rescue puts "ugh ohhhhh"
# end

# fun_with_ids

# Question 2

# Let's look at object id's again from the perspective of a method call instead of a block.

# Here we haven't changed ANY of the code outside or inside of the block/method. We simply took the contents of the block from the previous practice problem and moved it to a method, to which we are passing all of our outer variables.

# Predict how the values and object ids will change throughout the flow of the code below:

def fun_with_ids
  a_outer = 42
  b_outer = "forty two"
  c_outer = [42]
  d_outer = c_outer[0]

  a_outer_id = a_outer.object_id
  b_outer_id = b_outer.object_id
  c_outer_id = c_outer.object_id
  d_outer_id = d_outer.object_id

  puts "a_outer is #{a_outer} with an id of: #{a_outer_id} before calling the method."
  puts "b_outer is #{b_outer} with an id of: #{b_outer_id} before calling the method."
  puts "c_outer is #{c_outer} with an id of: #{c_outer_id} before calling the method."
  puts "d_outer is #{d_outer} with an id of: #{d_outer_id} before calling the method."
  puts

  an_illustrative_method(a_outer, b_outer, c_outer, d_outer, a_outer_id, b_outer_id, c_outer_id, d_outer_id)


  puts "a_outer is #{a_outer} with an id of: #{a_outer_id} BEFORE and: #{a_outer.object_id} AFTER the method call."
  puts "b_outer is #{b_outer} with an id of: #{b_outer_id} BEFORE and: #{b_outer.object_id} AFTER the method call."
  puts "c_outer is #{c_outer} with an id of: #{c_outer_id} BEFORE and: #{c_outer.object_id} AFTER the method call."
  puts "d_outer is #{d_outer} with an id of: #{d_outer_id} BEFORE and: #{d_outer.object_id} AFTER the method call."
  puts

  puts "a_inner is #{a_inner} with an id of: #{a_inner_id} INSIDE and: #{a_inner.object_id} AFTER the method." rescue puts "ugh ohhhhh" # a_inner and a_inner_id were initialized as variables local to the an_illustrative_method method and does not have an available scope, nor was it passed in as a paramater, triggering exception rescue
  puts "b_inner is #{b_inner} with an id of: #{b_inner_id} INSIDE and: #{b_inner.object_id} AFTER the method." rescue puts "ugh ohhhhh"
  puts "c_inner is #{c_inner} with an id of: #{c_inner_id} INSIDE and: #{c_inner.object_id} AFTER the method." rescue puts "ugh ohhhhh"
  puts "d_inner is #{d_inner} with an id of: #{d_inner_id} INSIDE and: #{d_inner.object_id} AFTER the method." rescue puts "ugh ohhhhh"
  puts
end


def an_illustrative_method(a_outer, b_outer, c_outer, d_outer, a_outer_id, b_outer_id, c_outer_id, d_outer_id) # these local variables point to the same location in memory space as their calling variables

  puts "a_outer id was #{a_outer_id} before the method and is: #{a_outer.object_id} inside the method." # i don't think that a_outer_id is available to this method as it was initialized in the fun_with_ids method... scratch that, it was passed into the method as a parameter 
  puts "b_outer id was #{b_outer_id} before the method and is: #{b_outer.object_id} inside the method."
  puts "c_outer id was #{c_outer_id} before the method and is: #{c_outer.object_id} inside the method."
  puts "d_outer id was #{d_outer_id} before the method and is: #{d_outer.object_id} inside the method."
  puts

  a_outer = 22 # a_outer is reassigned to a memory space with the object id 45
  b_outer = "thirty three" # b_outer is reassigned to a memory space with the object id for the string "thirty three" 260
  c_outer = [44] # c_outer is reassigned to a memory space for an array containing one integer 260, index position 0 is object id 89
  d_outer = c_outer[0] # d_outer is reassigned to a memory space with the object id 89, the same as index position 0 for the array c_outer points to

  puts "a_outer inside after reassignment is #{a_outer} with an id of: #{a_outer_id} before and: #{a_outer.object_id} after."
  puts "b_outer inside after reassignment is #{b_outer} with an id of: #{b_outer_id} before and: #{b_outer.object_id} after."
  puts "c_outer inside after reassignment is #{c_outer} with an id of: #{c_outer_id} before and: #{c_outer.object_id} after."
  puts "d_outer inside after reassignment is #{d_outer} with an id of: #{d_outer_id} before and: #{d_outer.object_id} after."
  puts

  a_inner = a_outer # a_inner and a_outer both point to object id 45
  b_inner = b_outer # b_inner and b_outer both point to object id 280
  c_inner = c_outer # c_inner and c_outer both point to object id 280 which is an array with index position 0 pointing to 89
  d_inner = c_inner[0] # d_inner and d_outer both point to object id 89

  a_inner_id = a_inner.object_id
  b_inner_id = b_inner.object_id
  c_inner_id = c_inner.object_id
  d_inner_id = d_inner.object_id

  puts "a_inner is #{a_inner} with an id of: #{a_inner_id} inside the method (compared to #{a_outer.object_id} for outer)."
  puts "b_inner is #{b_inner} with an id of: #{b_inner_id} inside the method (compared to #{b_outer.object_id} for outer)."
  puts "c_inner is #{c_inner} with an id of: #{c_inner_id} inside the method (compared to #{c_outer.object_id} for outer)."
  puts "d_inner is #{d_inner} with an id of: #{d_inner_id} inside the method (compared to #{d_outer.object_id} for outer)."
  puts
end

fun_with_ids
