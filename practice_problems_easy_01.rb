# # Question 1

# # What would you expect the code below to print out?

# numbers = [1, 2, 2, 3]
# numbers.uniq

# puts numbers

# # => [1, 2, 2, 3]
# #  The array object referenced by the numbers variable is not mutated by the non-destructive #array.uniq method

# #  addendum: the puts method prints out each index position on a new line if it is passed an array

# Question 2

# Describe the difference between ! and ? in Ruby. And explain what would happen in the following scenarios:

#     what is != and where should you use it?
#      this is an evaluation method used as shorthand for "is not equivalent to"
#     put ! before something, like !user_name
#     to make an object return an opposite boolean value
#     put ! after something, like words.uniq!
#       to utilize a method with side-effects, often (and in this case) mutating the calling object
#     put ? before something
#       not sure. ternary operator comes to mind
#     put ? after something
#       when calling an evaluation method like #string.starts_with?
#     put !! before something, like !!user_name
#       to return the same boolean value as the caller initially had

# Replace the word "important" with "urgent" in this string:

# advice = "Few things in life are as important as house training your pet dinosaur."

# p advice.sub("important", "urgent")

# Question 4

# The Ruby Array class has several methods for removing items from the array. Two of them have very similar names. Let's see how they differ:

# numbers = [1, 2, 3, 4, 5]

# # What do the following method calls do (assume we reset numbers to the original array between method calls)?

# numbers.delete_at(1)
# p numbers
# # deletes the index position one, leaving [1, 3, 4, 5]
# numbers = [1, 2, 3, 4, 5]
# numbers.delete(1)
# p numbers
# # deletes the value 1 from the string object, leaving [2, 3, 4, 5]

# Question 5

# Programmatically determine if 42 lies between 10 and 100.

# hint: Use Ruby's range object in your solution.

# p (10..100).include?(42)

# Question 6

# Starting with the string:

# famous_words = "seven years ago..."

# # show two different ways to put the expected "Four score and " in front of it.

# preamble = "Four score and "

# p preamble + famous_words

# p preamble.concat(famous_words)

# Question 7

# If we build an array like this:

# flintstones = ["Fred", "Wilma"]
# flintstones << ["Barney", "Betty"]
# flintstones << ["BamBam", "Pebbles"]

# # We will end up with this "nested" array:

# # ["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]]

# # Make this into an un-nested array.

# flintstones.flatten!

# Given the hash below

# flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

# # Turn this into an array containing only two elements: Barney's name and Barney's number

# arr = [flintstones.key(2), flintstones["Barney"]]

# flintstones.delete_if { |name, number| name != "Barney"}
# flintstones = flintstones.to_a.flatten!
