# 1

# if false
#   greeting = "hello world"
# end

# p greeting

# nil - typically will raise an excpetion for uninitialized variable
# but for a variable within an if statement they are initialized to nil
# even if not initialized

# 2

# greetings = { a: 'hi' }
# informal_greeting = greetings[:a]
# informal_greeting += ' there'

# puts informal_greeting  #  => "hi there"
# puts greetings

# 3

# def mess_with_vars(one, two, three)
#   one = two
#   two = three
#   three = one
# end
# # doesn't mutate original option, switches pointer within method

# def mess_with_vars(one, two, three)
#   one = "two"
#   two = "three"
#   three = "one"
# end
# # doesn't mutate original option, switches pointer within method

# def mess_with_vars(one, two, three)
#   one.gsub!("one","two")
#   two.gsub!("two","three")
#   three.gsub!("three","one")
# end
# # mutates object that both the method arguemtn and the variable name are pointing towards

# one = "one"
# two = "two"
# three = "three"

# mess_with_vars(one, two, three)

# puts "one is: #{one}"
# puts "two is: #{two}"
# puts "three is: #{three}"

# 4

# def dot_separated_ip_address?(input_string)
#   dot_separated_words = input_string.split(".")
#   return false if dot_separated_words.length != 4
  
#   while dot_separated_words.size > 0 do
#     word = dot_separated_words.pop
#     return false unless is_an_ip_number?(word)
#   end

#   true
# end
