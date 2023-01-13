# 1

# 10.times { |number| puts (" " * number) + "The Flintstones Rock!" }

# 2

# puts "the value of 40 + 2 is " + (40 + 2)

# This outputs an error because we're trying to add a string and an integer together
# We have a couple options:
# - 1 convert the mathematical expression to a string
# puts "the value of 40 + 2 is " + (40 + 2).to_s

# - 2 Add the expression into the great string with string interpolation
# puts "the value of 40 + 2 is #(40 + 2)"

# # 3

# def factors(number)
#   divisor = number
#   factors = []
#   while divisor > 0
#     factors << number / divisor if number % divisor == 0
#     divisor -= 1
#   end
#   factors
# end

# # Test
# puts "Here's 42:"
# puts factors(42)
# puts "next, 17:"
# puts factors(17)
# puts "next, 0:"
# puts factors(0)
# puts "next, -12:"
# puts factors(-12)

# # Bonus 1
# The purpose of the number%divisor == 0 is to check if there is
# a remainder. By definition, a value divded by its factor has a remainder of 0

# # Bonus 2
# The last line "factors" returns the array of factors that we collected

# 4

# Both methods return the same value, however the first method mutates the argument itself
# i.e. whatever array we input for "buffer" into the method. 
# The first method returns a value and has a side effect, which we should avoid


# # 5

# The local limit variable cannot be accessed (out of scope) from
# within the fib method. thus we should add a limit parameter and pass 
# in the local variable as an argument to fib

# 6

# answer = 42

# def mess_with_it(some_number)
#   some_number += 8
# end

# new_answer = mess_with_it(answer)

# p answer - 8

# output is 34, some number is pointed to a new object within the method

# 7

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

# mess_with_demographics(munsters)

# The information did get ransacked i.e. munsters was mutated. This is because
# demo_hash and munstersstill point at the same hash object. During the method execution
# however the hashes individual pointers are reassigned to new objects, but hte id of the
# hash itself remains the same.

# 8

# def rps(fist1, fist2)
#   if fist1 == "rock"
#     (fist2 == "paper") ? "paper" : "rock"
#   elsif fist1 == "paper"
#     (fist2 == "scissors") ? "scissors" : "paper"
#   else
#     (fist2 == "rock") ? "rock" : "scissors"
#   end
# end

# puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")

# working our way inside out, the paper comes out on top as the output

# # 9

# def foo(param = "no")
#   "yes"
# end

# def bar(param = "no")
#   param == "no" ? "yes" : "no"
# end

# # bar(foo)
# # bar("yes")
# # false ? "yes" : "no"
# # "no"

# 10



