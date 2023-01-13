# 1

1
2
2
3

# 2

=begin
 ? is typically used as either a suffix on methods indicating a boolean return value or
 in the ternary operator after the evaluated boolean expression and before the action to
 be taken in the event that expression evaluates as truthy be the ternary operator.
 ! is used as a prefix to indicate a boolean flip to whatever method it is connected to, as well
 as a suffix to methods to indicate that they are mutating the caller methods.

 1) != is an operator that evaluates to false if the operands on either side are equal 
 and it evaluates to true if the operands on either side are not equal
 2) ! as a prefix to a variable outputs the opposite of their boolean equivalent
 3) ! as a suffix means self mutating (conventionally, but not guaranteed at all)
 4) & 5) if part of a method name could mean anything, but see entry above about best guess
 6) !! returns the boolean equivalent
=end

# 3

advice = "Few things in life are as important as house training your pet dinosaur."
advice.gsub!('important', 'urgent')

# advice.gsub!('important','urgent')
# puts advice

# 4

# numbers = [1, 2, 3, 4, 5]
# numbers.delete_at(1)
# # deletes value at index 1, in this case that value is 2

# numbers = [1, 2, 3, 4, 5]
# numbers.delete(1)
# puts numbers
# # deletes values == 1

# 5

# puts (10..100).cover?(45.5)

# 6

# famous_words = "seven years ago..."
# famous_words = "four score and " + famous_words
# puts famous_words

# famous_words = "seven years ago..."
# famous_words.prepend("Four score and ")
# puts famous_words

# famous_words = "seven years ago..."
# famous_words.insert(0,"Four score and ")
# puts famous_words

# famous_words = "seven years ago..."
# "Four score and " << famous_words
# puts famous_words

# 7

# flintstones = ["Fred", "Wilma"]
# flintstones << ["Barney", "Betty"]
# flintstones << ["BamBam", "Pebbles"]
# flintstones.flatten!

# # 8

# flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
# flintstones.assoc('Barney')