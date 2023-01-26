# 1

# puts "Teddy is #{rand(20..200)} years old!"

# # 2

# SQMETERS_TO_SQFEET = 10.7639
# print "=> Enter length of room: "
# length = gets.chomp.to_i
# print "=> Enter width of room: "
# width = gets.chomp.to_i
# area_m = length * width
# area_f = area_m * SQMETERS_TO_SQFEET
# puts "The area of the room is #{area_m} square meters (#{area_f} square feet)."

# # 3

# print "What is the bill? "
# bill = gets.chomp.to_f
# print "What is the tip percentage? "
# tip_percentage = gets.chomp.to_f

# tip = bill * 0.01 * tip_percentage
# total = bill + tip
# puts "The tip is $#{tip.round(2)}"
# puts "The total is $#{total.round(2)}"

# 4

# print "What is your age? "
# current_age = gets.chomp.to_i
# print "At what age would you like to retire? "
# retirement_age = gets.chomp.to_i
# difference = retirement_age - current_age
# current_year = Time.now.year

# puts "It's #{current_year}. You will retire in #{current_year+difference}."
# puts "You have only #{difference} years of work to go!"

# 5

# print "What is your name? "
# name = gets.chomp
# if name[-1]== '!'
#   puts ("HELLO #{name.delete_suffix('!').upcase}. WHY ARE WE SCREAMING?")
# else
#   puts "Hello #{name}."
# end

# # 6

# 100.times do |num|
#   if num.odd?
#     puts num
#   end
# end

# # 7

# val = 1
# while val <= 99
#   if val.even?
#     puts val
#   end
#   val += 1
# end

# # 8

# print ">> Please enter an integer greater than 0: "
# num = gets.chomp.to_i
# print ">> Please enter 's' to compute the sum, 'p' to compute the product: "
# action = gets.chomp
# case action
# when 's'
#   sum = num
#   num.times do |x|
#     sum += x
#   end
#   puts "The sum of the integers between 1 and #{num} is #{sum}."
# when 'p'
#   product = 1
#   num.times do |x|
#     product *= (x + 1)
#   end
#   puts "The product of the integers between 1 and #{num} is #{product}."
# else
#   puts "oops"
# end

# 9

BOB
BOB

# They point to the same object still

# 10

def negative(val)
  -val.abs
end




