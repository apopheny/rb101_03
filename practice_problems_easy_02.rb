# Question 1

# In this hash of people and their age,

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# # see if "Spot" is present.

# # Bonus: What are two other hash methods that would work just as well for this solution?

# p ages.has_key?("Spot")
# p ages.include?("Spot")
# p ages.key?("Spot")

# Question 2

# Starting with this string:

# munsters_description = "The Munsters are creepy in a good way."

# # Convert the string in the following ways (code will be executed on original munsters_description above):

# # "tHE mUNSTERS ARE CREEPY IN A GOOD WAY."
# # "The munsters are creepy in a good way."
# # "the munsters are creepy in a good way."
# # "THE MUNSTERS ARE CREEPY IN A GOOD WAY."

# p munsters_description.swapcase
# p munsters_description.capitalize
# p munsters_description.downcase
# p munsters_description.upcase

# Question 3

# We have most of the Munster family in our age hash:

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }

# # add ages for Marilyn and Spot to the existing hash

# additional_ages = { "Marilyn" => 22, "Spot" => 237 }

# ages.merge!(additional_ages)

# p ages

# Question 4

# See if the name "Dino" appears in the string below:

# advice = "Few things in life are as important as house training your pet dinosaur."

# p advice.include?("Dino")

# Question 5

# Show an easier way to write this array:

# flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]

# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# Question 6

# How can we add the family pet "Dino" to our usual array:

# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# flintstones << "Dino"

# Question 7

# In the previous practice problem we added Dino to our array like this:

# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# # flintstones << "Dino"

# # We could have used either Array#concat or Array#push to add Dino to the family.

# # How can we add multiple items to our array? (Dino and Hoppy)

# flintstones.concat(["Dino", "Hoppy"])
# p flintstones

# Question 8

# Shorten the following sentence:

# advice = "Few things in life are as important as house training your pet dinosaur."

# # Review the String#slice! documentation, and use that method to make the return value "Few things in life are as important as ". But leave the advice variable as "house training your pet dinosaur.".

# # As a bonus, what happens if you use the String#slice method instead?

# p advice.slice!("Few things in life are as important as ")
# p advice

# # if you use slice instead advice is not mutated from the original assignment

# Question 9

# Write a one-liner to count the number of lower-case 't' characters in the following string:

# statement = "The Flintstones Rock!"
# t_count = 0
# statement.each_char {|letter| letter == 't' ? t_count += 1 : t_count += 0  }
# p t_count
# p statement.count('t')

# Question 10

# Back in the stone age (before CSS) we used spaces to align things on the screen. If we had a table of Flintstone family members that was forty characters in width, how could we easily center that title above the table with spaces?

# title = "Flintstone Family Members"

# p title.center(40)
