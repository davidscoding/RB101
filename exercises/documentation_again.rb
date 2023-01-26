# 1

# File#path is an instance method while File::path is a class method

# 2

# note that -4712 is the default year in the description

# require 'date'

# puts Date.civil
# #-4712-01-01
# puts Date.civil(2016)
# #-2016-01-01
# puts Date.civil(2016, 5)
# #-2016-05-01
# puts Date.civil(2016, 5, 13)
# #-2016-05-13

# # 3



# def my_method(a, b = 2, c = 3, d)
#   p [a, b, c, d]
# end

# my_method(4, 5, 6)

# [4, 5, 3, 6]

# # 4

# a = [1, 4, 8, 11, 15, 19]

# p a.bsearch{|x| x > 8}

# 5

# a = %w(a b c d e)
# puts a.fetch(7)
# puts a.fetch(7, 'beats me')
# puts a.fetch(7) { |index| index**2 }

# 6

# 5.step(to: 10, by: 3) { |value| puts value }

# 5 8

# # 7

# s = 'abc'
# puts s.public_methods.inspect

# 8

# a = [5, 9, 3, 11]
# puts a.min
# puts a.min(2)

# 9

# https://ruby-doc.org/stdlib-2.7.0/libdoc/psych/rdoc/Psych.html

# 1