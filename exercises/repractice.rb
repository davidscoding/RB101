# easy_1

# # 1

# def repeat(string, count)
#   count.times{puts string}
# end

# repeat("Hello",3)

# # 2

# def is_odd?(number)
#   number % 2 != 0 
# end

# puts is_odd?(2)    # => false
# puts is_odd?(5)    # => true
# puts is_odd?(-17)  # => true
# puts is_odd?(-8)   # => false
# puts is_odd?(0)    # => false
# puts is_odd?(7)    # => true

# 3

# def stringy(length)
#   string = ""
#   length.times do |count|
#     char = count.odd? ? '0' : '1'
#     string << char
#   end
#   string
# end

# # 4

# def calculate_bonus(salary,boolean)
#   boolean ? (salary/2) : 0
# end

# puts calculate_bonus(2800, true) == 1400
# puts calculate_bonus(1000, false) == 0
# puts calculate_bonus(50000, true) == 25000

# 5

# Problem:

# Box around text with new lines

# Input: string
# Output: printed box + border + string

# Explicit:
#   1: one layer of gap on all sides
#   2: | on the verticals
#   3: + at the corners
#   4: - at the top and bottom
# Implicit
#   1: works on long string
#   2: string input

# Data type: string, array of strings

# Algorithim:

# checks string class
#   outputs error message if not
# initialize top/bottom border strings
# initialize line counter
# loop
#   chop out first 76 characters, add them with buffer to array
#   add to counter
#   if size
#   end
# end
# printother borders
# iterate through array

# def print_in_box_small(message)
#   horizontal_rule = "+#{'-' * (message.size + 2)}+"
#   empty_line = "|#{' ' * (message.size + 2)}|"

#   puts horizontal_rule
#   puts empty_line
#   puts "| #{message} |"
#   puts empty_line
#   puts horizontal_rule
# end

# def print_in_box(text)

#   unless text.class == String
#     puts "Error, needs string input"
#     return
#   end

#   if text.length <= 76
#     print_in_box_small(text)
#     return
#   end

#   top_bottom_border = '+' + '-' * 78 + "+"
#   top_bottom_padding = '|' + ' ' * 78 + "|"

#   puts top_bottom_border
#   puts top_bottom_padding

#   until text.size <= 0 do
#     puts "| #{text.slice!(0,76).center(76)} |"
#   end

#   puts top_bottom_padding
#   puts top_bottom_border
# end 

# print_in_box("Hello is it me you're looking for I can see it in your eyes I can see it in you smale and I don't remember andy more of the words to this song but I'm add more lines to this string because I would like to keep the length well over the 76 character amount that I need")

# # 6

# def triangle(side)
#   side.times do |count|
#     puts " " * (side - count + 1) + '*' * (count + 1)
#   end
# end

# triangle(4)

# # 7

# mad_hash = {}
# puts "Enter a noun: "
# mad_hash[:noun] = gets.chomp
# puts "Enter a verb: "
# mad_hash[:verb] = gets.chomp

# puts "Let's go #{mad_hash[:verb]} a #{mad_hash[:noun]}"

# # 8

# def reversed_number(input)
#   input.to_s.reverse.to_i
# end
# p reversed_number(123400)

# # 9

# def center_of (string)
#   string.length.odd? ? string.slice(string.length/2) : string.slice(string.length/2-1,2)
# end


# p center_of('I love ruby') == 'e'
# p center_of('Launch School') == ' '
# p center_of('Launch') == 'un'
# p center_of('Launchschool') == 'hs'
# p center_of('x') == 'x'

# # easy_2

# # 1

# puts "Enter name: "
# name = gets.chomp
# if name.empty?
#   name = "Teddy"
# end
# puts "#{name} is #{(20..200).to_a.sample} years old!"
# puts "Teddy is #{rand(20..200)} years old!"

# # 2

# CONVERSION = 10.7369

# puts "Length: "
# l = gets.chomp.to_f

# puts "Width: "
# w = gets.chomp.to_f

# square_meters_area = l * w
# square_feet_area = square_meters_area * CONVERSION

# puts "Area #{square_meters_area} sq meters, #{square_feet_area} sq feet"

# # 3

# puts "Bill?"
# bill = gets.chomp.to_f

# puts "Tip percentage?"
# tip_percent = gets.chomp.to_f

# tip = bill * (tip_percent*0.01)
# total = tip + bill

# puts "tip is $#{tip.round(2)}"
# puts "total is $#{total.round(2)}"

# # 4
# require 'date'

# puts "what is your age?"
# current_age = gets.chomp.to_i

# puts "retirement age?"
# retirement_age = gets.chomp.to_i

# year = Date.today.cwyear
# dif = retirement_age - current_age
# puts "It's #{year}, retire in #{year + dif}, only #{dif} years left! "

# # 5

# puts "name? "
# name = gets.chomp
# if name.end_with?('!')
#   name.chop!
#   puts "HELLO #{name.upcase}!"
# else
#   puts "hello #{name}"
# end

# # 6

# (1..99).each do |num|
#   puts num if num.odd?
# end

# # 7

# (1..99).each do |num|
#   puts num if num.even?
# end

# # 8

# puts ">> int: "
# num = gets.chomp.to_i

# puts ">> s or p: "
# op = gets.chomp

# case op
# when "s"
#   count = 0
#   num.times do |n|
#     count += (n+1)
#   end
#   puts "#{count}"
# when "p"
#   count = 1
#   num.times do |n|
#     count *= (n+1)
#   end
#   puts "#{count}"
# else
#   puts "wrong answer"
# end

# # 9

# BOB
# BOB

# # Were mutating the caller (name) with the upcase! method. This means that object itself that the 
# # local variable 'name' points to is modified

# # 10

# def negative(num)
#   -num.abs
# end

# p negative(5)
# p negative(0)
# p negative(-4)

# easy_3

# # 1

# puts "Enter first"
# first = gets.chomp.to_i
# puts "Enter second"
# second = gets.chomp.to_i
# puts "Enter third"
# third = gets.chomp.to_i
# puts "Last"
# last = gets.chomp.to_i

# array = [first,second,third]
# if array.include?(last)
#   puts "#{last} is in #{array}"
# else
#   puts "#{last} isn't in #{array}"
# end

# # 2

# puts "first"
# f = gets.chomp.to_f

# puts "second"
# s = gets.chomp.to_f

# puts "#{f} + #{s} = #{f + s}"
# puts "#{f} - #{s} = #{f - s}"
# puts "#{f} * #{s} = #{f * s}"
# puts "#{f} / #{s} = #{f / s}"
# puts "#{f} % #{s} = #{f % s}"
# puts "#{f} ** #{s} = #{f ** s}"

# # 3

# puts "Please enter a word/words: "
# answer = gets.chomp
# puts %Q(There are #{answer.split.join.size} chars in "#{answer}")

# # 4

# def multiply (v1,v2)
#   v1*v2
# end

# # 5

# def square (v)
#   multiply(v,v)
# end

# def power (v, x=1)
#   count = 0
#   product = 1
#   while count < x
#     product = multiply(product,v)
#     count += 1
#   end
#   product
# end

# p power(3,3)
# p power(4,2)
# p power(5)
# p power(3,5)
# p power(4,0)

# # 6

# def xor (value1,value2)
#   !!value1 == !value2
# end

# p xor(false,true)
# p xor(nil,nil)
# p xor(false,true)
# p xor(false,false)
# p xor(false,nil)

# # 7

def palindrome? (string)
  string == string.reverse
end

# p palindrome?([1,2,3,4,3,2,1])
# p palindrome?('taco')
# p palindrome?('mom')

# # 8

# def real_palindrome? (string)
#   palindrome?(string.downcase.gsub(/[^a-z0-9]/,""))
# end

# p real_palindrome?('madam') == true
# p real_palindrome?('Madam') == true           # (case does not matter)
# p real_palindrome?("Madam,   I'm Adam") == true # (only alphanumerics matter)
# p real_palindrome?('356653') == true
# p real_palindrome?('356a653') == true
# p real_palindrome?('123ab321') == false

# # 9

# def palindromic_number?(num)
#   palidrome?(num.to_s)
# end

# 10

# def uppercase?(string)
#   string.upcase == string
# end

# p uppercase?('t') == false
# p uppercase?('T') == true
# p uppercase?('Four Score') == false
# p uppercase?('FOUR SCORE') == true
# p uppercase?('4SCORE!') == true
# p uppercase?('') == true

# val = ["hello",2,4]
# p val.to_s.slice(2,7)


# x = "word"
# puts x.object_id
# x.upcase!
# puts x.object_id
# x = "word"
# puts x.object_id
# def testing
#   puts "here?"
# end

# p true ? testing : 0
# p false ? testing : 0

# (1..10)                 .tap { |x| p x }   # 1..10
#  .to_a                  .tap { |x| p x }   # [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
#  .select {|x| x.even? } .tap { |x| p x }   # [2, 4, 6, 8, 10]
#  .map {|x| x*x }        .tap { |x| p x }   
# x = Array.new
#  p x

# count = 0

# loop do
#   a = 1
#   break
# end

# def test
#   a = 2
#   case
#   when a == 1, a == 2
#     "a is one or two"
#   when a == 3
#     "a is three"
#   else
#     "I don't know what a is"
#   end 

#   while a == 2 { a -= 1 }
#   end
#   a
# end

# # p a
# p test

# a = "t00o"

# case a
# when 1          then  p 1
# when /[heaalo]/ then  p 2
# else                  p 3
# end

require "pry"

# a = [1,2,3]
# a.concat([4,5])
# a = 1
# b =3
# binding.pry
# c = 5
# q = []
# q << a << b

# 3.times do |num|
#   q << a*num
#   binding.pry
# end

# def take_block(number, &block)
#   number.times &block
# end

# proc_talk = Proc.new do |num|
#   puts "Proc being called in the method! #{num}"
#   binding.pry
# end

# number = 15
# take_block(number, &proc_talk)

# x = nil

# bool = !!x
# p bool

# p -11/4

a = "o"

b = "z"

arr = (a..b).to_a
puts arr[0]

s = []
p s[0]