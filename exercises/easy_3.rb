# 1

# order_array = ["1st","2nd","3rd","4th","5th"]
# num_array = []

# order_array.each do |iteration|
#   p "Enter the #{iteration} number: "
#   num_array << gets.chomp.to_i
# end

# p "Enter the final number:"
# final_num = gets.chomp.to_i

# if num_array.include?(final_num)
#   puts "The number #{final_num} appears in #{num_array}."
# else
#   puts "The number #{final_num} does not appear in #{num_array}."
# end

# # 2

# p "Enter the first number:"
# first_num = gets.chomp.to_i

# p "Enter the second number:"
# second_num = gets.chomp.to_i

# sum = first_num + second_num
# difference = first_num - second_num
# product = first_num + second_num
# quotient = first_num / second_num
# remainder = first_num % second_num
# power = first_num ** second_num

# p "==> #{first_num} + #{second_num} = #{sum}"
# p "==> #{first_num} - #{second_num} = #{difference}"
# p "==> #{first_num} * #{second_num} = #{product}"
# p "==> #{first_num} / #{second_num} = #{quotient}"
# p "==> #{first_num} % #{second_num} = #{remainder}"
# p "==> #{first_num} ** #{second_num} = #{power}"

# 3

# p "Please write word or multiple words: "
# words = gets.chomp
# puts "There are #{words.delete(" ").size} words in #{words}"

# 4

# def multiply(n1,n2)
#   n1 * n2
# end

# # 5

# def square(n)
#   multiply(n,n)
# end

# 6

# def xor (bool1, bool2)
#   return true if bool1 && !bool2
#   return true if bool2 && !bool1
#   false
# end

# # # 7

# def palindrome? (string)
#   string.reverse == string
# end

# # # 8


# def real_palindrome? (string)
#   string = 
#   string = string.downcase.delete('^a-z0-3')
#   p string
#   palindrome?(string)
# end

# p real_palindrome?('madam') == true
# p real_palindrome?('Madam') == true           # (case does not matter)
# p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
# p real_palindrome?('356653') == true
# p real_palindrome?('356a653') == true
# p real_palindrome?('123ab321') == false

# # Sandbox


# key = ('a'..'z').to_a.concat((1..9).to_a).join
# p key
# string = "Hello, I'm talking"
# p string.downcase!.gsub(/[^a-z1-9]/, "")

# hello  = 'h' << 'ee'
# hello << " hee"
# p hello



# # 9

# def palindromic_number? (number)
#   Integer(number) rescue "Not a number!"
#   flipped_number = number.to_s.reverse.to_i
#   number == flipped_number
# end

# p palindromic_number?(34543) == true
# p palindromic_number?(123210) == false
# p palindromic_number?(22) == true
# p palindromic_number?(5) == true

# 10

# def uppercase?(string)
#   ('a'..'z').to_a.each do |char|
#     if string.include?(char)
#       return false
#     end
#   end
#   true
# end

# def uppercase?(string)
#   string == string.upcase
# end

# uppercase?('t') == false
# uppercase?('T') == true
# uppercase?('Four Score') == false
# uppercase?('FOUR SCORE') == true
# uppercase?('4SCORE!') == true
# uppercase?('') == true

val = true ? 1 : 2

puts "testing".include?("testy")