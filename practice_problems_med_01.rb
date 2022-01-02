# Question 1

# Let's do some "ASCII Art" (a stone-age form of nerd artwork from back in the days before computers had video screens).

# For this practice problem, write a one-line program that creates the following output 10 times, with the subsequent line indented 1 space to the right:

# The Flintstones Rock!
#  The Flintstones Rock!
#   The Flintstones Rock!

# 10.times { |flint| puts (" " * flint) + "The Flinstones Rock!" }

# Question 2

# The result of the following statement will be an error:

# puts "the value of 40 + 2 is " + (40 + 2)

# Why is this and what are two possible ways to fix this?

# Trying to convert an integer to a string for concatenation will result in a no implicit conversion of integer to string error

# Solutions:

# puts "the value of 40 + 2 is " + (40 + 2).to_s
# puts "the value of 40 + 2 is #{(40 + 2)}"
# Question 3

# Alan wrote the following method, which was intended to show all of the factors of the input number:

# def positive_factors(number)
#   divisor = number
#   factors = []
#   begin
#     factors << number / divisor if number % divisor == 0
#     divisor -= 1
#   end until divisor == 0
#   p factors
# end

# def factors(num)
#   if num == 0
#     factors = [0]
#     p factors
#   elsif num * -1 > 0
#     p "This program cannot factor negative numbers"
#   else positive_factors(num)
#   end
# end

# factors(-9)
# factors(0)
# factors(9)

# Alyssa noticed that this will fail if the input is 0, or a negative number, and asked Alan to change the loop. How can you make this work without using begin/end/until? Note that we're not looking to find the factors for 0 or negative numbers, but we just want to handle it gracefully instead of raising an exception or going into an infinite loop.
# Bonus 1

# What is the purpose of the number % divisor == 0 ?
# This checks if the number can be divided with no remnant by the divisor, iterating through 0..factored number

# Bonus 2

# What is the purpose of the second-to-last line (line 8) in the method (the factors before the method's end)?
# This is to force the method to return factors; without this, the method will not yield a return value

# Question 4

# Alyssa was asked to write an implementation of a rolling buffer. Elements are added to the rolling buffer and if the buffer becomes full, then new elements that are added will displace the oldest elements in the buffer.

# She wrote two implementations saying, "Take your pick. Do you like << or + for modifying the buffer?". Is there a difference between the two, other than what operator she chose to use to add an element to the buffer?

# def rolling_buffer1(buffer, max_buffer_size, new_element)
#   buffer << new_element
#   buffer.shift if buffer.size > max_buffer_size
#   buffer
# end

# def rolling_buffer2(input_array, max_buffer_size, new_element)
#   buffer = input_array + [new_element]
#   buffer.shift if buffer.size > max_buffer_size
#   buffer
# end

# the second method is superior because it does not mutate the data being buffered. If this were a video, somehow, a user would not be able to skip backwards past the oldest element in the buffer as it would have been deleted from memory

# Question 5

# Alyssa asked Ben to write up a basic implementation of a Fibonacci calculator. A user passes in two numbers, and the calculator will keep computing the sequence until some limit is reached.

# Ben coded up this implementation but complained that as soon as he ran it, he got an error. Something about the limit variable. What's wrong with the code?

# LIMIT = 15

# def fib(first_num, second_num)
#   while first_num + second_num < LIMIT
#     sum = first_num + second_num
#     first_num = second_num
#     second_num = sum
#   end
#   sum
# end

# result = fib(0, 1)
# puts "result is #{result}"

# How would you fix this so that it works?
# Methods have their own variable scope and cannot access local variables initialized outside that scope. You could also initialize the local variable limit within the method or pass limit in as an additional parameter with the argument 15

# Question 6

# What is the output of the following code?

# answer = 42

# def mess_with_it(some_number)
#   some_number += 8
# end

# new_answer = mess_with_it(answer)

# p answer - 8

# 34

# Question 7

# One day Spot was playing with the Munster family's home computer and he wrote a small program to mess with their demographic data:

# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }

# def mess_with_demographics(demo_hash)
#   demo_hash.values.each do |family_member|
#     family_member["age"] += 42
#     family_member["gender"] = "other"
#   end
# end

# After writing this method, he typed the following...and before Grandpa could stop him, he hit the Enter key with his tail:

# mess_with_demographics(munsters)

# Did the family's data get ransacked? Why or why not?

# The data is mutated as demo_hash points to the same memory location as munsters, and then the each method uses assignment by index position, which is a mutating method

# Question 8

# Method calls can take expressions as arguments. Suppose we define a method called rps as follows, which follows the classic rules of rock-paper-scissors game, but with a slight twist that it declares whatever hand was used in the tie as the result of that tie.

# def rps(fist1, fist2)
#   if fist1 == "rock"
#     (fist2 == "paper") ? "paper" : "rock"
#   elsif fist1 == "paper"
#     (fist2 == "scissors") ? "scissors" : "paper"
#   else
#     (fist2 == "rock") ? "rock" : "scissors"
#   end
# end

# # What is the result of the following call?

# puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")

# # paper

# Question 9

# Consider these two simple methods:

# def foo(param = "no")
#   "yes"
# end

# def bar(param = "no")
#   param == "no" ? "yes" : "no"
# end

# What would be the return value of the following method invocation?

# p bar(foo)

# "no". The default argument of the foo method is "no" but the last line evaluated returns "yes". Passing yes into the bar method triggers the else condition of the ternary conditional, evaluating to "no"