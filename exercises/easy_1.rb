# # 1

# def repeat (string = "mystery", num)
#   num.times do
#     puts "Hello #{string}"
#   end
# end

# repeat(3)

# # 2

# def is_odd?(num)
#   num % 2 != 0
# end

# puts is_odd?(2)    # => false
# puts is_odd?(5)    # => true
# puts is_odd?(-17)  # => true
# puts is_odd?(-8)   # => false
# puts is_odd?(0)    # => false
# puts is_odd?(7)    # => true

# 3

# def stringy(num)
#   output = ""
#   num.times do |x|
#     output += ((x+1)%2).to_s
#   end
#   output
# end

# puts stringy(6) == '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'

# # 4

# def calculate_bonus(salary, bonus)
#   bonus ? salary/2 : 0
# end

# puts calculate_bonus(2800, true) == 1400
# puts calculate_bonus(1000, false) == 0
# puts calculate_bonus(50000, true) == 25000

# # 5

# def print_in_box(caption)
#   box_width = caption.length + 2
#   5.times do |line|
#     case line
#     when 0, 4
#       puts '+' + ('-' * box_width) + '+'
#     when 1, 3
#       puts '|' + (' ' * box_width) + '|'
#     when 2
#       puts '| ' + caption + ' |'
#     end 
#   end
# end

# print_in_box('hello')

# # 6

# def triangle(size)
#   (size + 1).times do |num|
#     puts '*' * num + " " * (size - num) 
#   end
# end

# triangle(9)

# # 7

# def madlibs
#   mad_hash = {}
#   print "Enter a noun: "
#   mad_hash[:noun] = gets.chomp
#   print "Enter a verb: "
#   mad_hash[:verb] = gets.chomp
#   print "Enter a adjective: "
#   mad_hash[:adjective] = gets.chomp
#   print "Enter a adverb: "
#   mad_hash[:adverb] = gets.chomp
#   puts "Do you #{mad_hash[:verb]} your #{mad_hash[:adjective]} #{mad_hash[:noun]} #{mad_hash[:adverb]}?"
# end

# madlibs

# # 8

# def reversed_number(num)
#   num.digits.join.to_i
# end

# p reversed_number(12345) == 54321
# p reversed_number(12213) == 31221
# p reversed_number(456) == 654
# p reversed_number(12000) == 21 # No leading zeros in return value!
# p reversed_number(12003) == 30021
# p reversed_number(1) == 1

# # 9

# def center_of(input)
#   input.size.odd? ? input[(input.size/2).floor] : input[input.size/2 - 1,2]
# end


# p center_of('I love ruby') == 'e'
# p center_of('Launch School') == ' '
# p center_of('Launch') == 'un'
# p center_of('Launchschool') == 'hs'
# p center_of('x') == 'x'

