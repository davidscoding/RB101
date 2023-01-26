# # 1

# loop do
#   puts 'Just keep printing...'
#   break
# end

# # 2

# loop do
#   puts 'This is the outer loop.'

#   loop do
#     puts 'This is the inner loop.'
#     break
#   end

#   break
# end

# puts 'This is outside all loops.'

# # 3

# iterations = 1

# loop do
#   puts "Number of iterations = #{iterations}"
#   iterations += 1
#   if iterations >= 5 then break end
# end

# # 4

# loop do
#   puts 'Should I stop looping?'
#   answer = gets.chomp
#   break if answer == 'yes'
# end

# # 5

# say_hello = true
# count = 0

# while say_hello
#   count += 1
#   puts 'Hello!'
#   say_hello = false if count >= 5
# end

# # 6

# numbers = []

# while numbers.length < 5
#   numbers << rand(100)
# end

# puts(numbers)

# # 7

# count = 1

# until count == 11
#   puts count
#   count += 1
# end

# # 8

# numbers = [7, 9, 13, 25, 18]

# until numbers.length == 0
#   puts numbers.shift
# end

# # 9

# for i in 1..100
#   puts i if i.odd?
# end

# # 10

# friends = ['Sarah', 'John', 'Hannah', 'Dave']

# for friend in friends
#   puts "Hello #{friend}!"
# end

# # 1

# count = 1

# loop do
#   type = count.even? ? "even" : "odd"
#   puts "#{count} is #{type}"
#   count += 1
#   break if count > 5
# end

# # 2

# loop do
#   number = rand(100)
#   puts number
#   break if number.between?(1,10)
# end

# # 3

# process_the_loop = [true, false].sample

# if process_the_loop
#   loop do
#     puts "The loop was processed"
#     break
#   end
# else
#   puts "The loop wasn't processed"
# end

# # 4

# loop do
#   puts 'What does 2 + 2 equal?'
#   answer = gets.chomp.to_i
#   if answer == 4
#     puts "That's correct!"
#     break
#   else
#     puts "Wrong answer. Try again!"
#   end
# end

# # 5

# numbers = []

# loop do
#   puts 'Enter any number:'
#   input = gets.chomp.to_i
#   numbers += [input]
#   break if numbers.length == 5
# end
# p numbers

# # 6

# names = ['Sally', 'Joe', 'Lisa', 'Henry']

# loop do
#   p names.pop
#   break if names.length == 0
# end

# # 7

# 5.times do |index|
#   puts index
#   break if index == 2
# end

# # 8

# number = 0

# until number == 10
#   number += 1
#   if number.even? then puts number end
# end

# # 9

# number_a = 0
# number_b = 0

# loop do
#   number_a += rand(2)
#   number_b += rand(2)
#   next if number_a < 5 &&  number_b < 5
#   puts "5 was reached!"
#   break
# end

# # 10

# def greeting
#   puts 'Hello!'
# end

# number_of_greetings = 2

# while number_of_greetings > 0
#   greeting
#   number_of_greetings -= 1
# end

# fruits = ['apple', 'banana', 'pear']
# transformed_elements = []
# counter = 0

# loop do
#   current_element = fruits[counter]

#   transformed_elements << (current_element.concat('s'))   # appends transformed string into array

#   counter += 1
#   break if counter == fruits.size
# end

# p transformed_elements # => ["apples", "bananas", "pears"]
# p fruits

# def double_numbers!(numbers)
#   doubled_numbers = []
#   counter = 0

#   loop do
#     break if counter == numbers.size

#     current_number = numbers[counter]
#     numbers[counter] = current_number * 2

#     counter += 1
#   end

# end

# my_numbers = [1, 4, 3, 7, 2, 6]
# double_numbers!(my_numbers) # => [2, 8, 6, 14, 4, 12]
# p my_numbers

# def double_odd_numbers(numbers)
#   doubled_numbers = []
#   counter = 0

#   loop do
#     break if counter == numbers.size

#     current_number = numbers[counter]
#     current_number *= 2 if counter.odd?
#     doubled_numbers << current_number

#     counter += 1
#   end

#   doubled_numbers
# end

# p my_numbers = [1, 4, 3, 7, 2, 6]
# p double_odd_numbers(my_numbers)  # => [2, 4, 6, 14, 2, 6]

# # not mutated
# p my_numbers                      # => [1, 4, 3, 7, 2, 6]

# def multiply(numbers, factor)
#   doubled_numbers = []
#   counter = 0

#   loop do
#     break if counter == numbers.size

#     current_number = numbers[counter]
#     doubled_numbers << current_number * factor

#     counter += 1
#   end

#   doubled_numbers
# end

# p my_numbers = [1, 4, 3, 7, 2, 6]
# p multiply(my_numbers, 3) # => [3, 12, 9, 21, 6, 18]

# # 1

# flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

# names_hash = {}

# flintstones.each_with_index do |name, index|
#   names_hash[name] = index
# end

# p names_hash

# # 2
# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

# count = 0

# ages.each do |_,val|
#   count += val
# end
# p count

# # 3

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# ages.select! do |_,val|
#   val >= 100
# end

# 4

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

# p ages.values.min

# # 5

# flintstones = %w(Fred Berney Wilma Beatles Betty BamBam Pebbles)

# first_index = nil
# looking = true

# flintstones.each_with_index do|name, index|
#   if name.start_with?("Be") && looking
#     first_index = index
#     looking = false
#   end
# end

# p first_index

# # 6

# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# flintstones.maps! do |name|
#   name = name[0,3]
# end

# # 7

# statement = "The Flintstones Rock"

# result = {}
# letters = ('A'..'Z').to_a + ('a'..'z').to_a

# letters.each do |letter|
#   letter_frequency = statement.count(letter)
#   result[letter] = letter_frequency if letter_frequency > 0
# end

# 8

# numbers = [1, 2, 3, 4]
# numbers.each do |number|
#   p number
#   numbers.shift(1)
# end

# numbers = [1, 2, 3, 4]
# numbers.each do |number|
#   p number
#   numbers.pop(1)
# end

# # 9

# words = "the flintstones rock"

# def titleize (input)
#   title_array = input.split(" ")
#   title_array.map! do |word|
#     word.capitalize!
#   end
#   title_array.join(' ')
# end

# p titleize(words)

# 10

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |key,val|
  if val['age'] >= 0 && val['age'] < 18
    val['age_group'] = 'kid'
  elsif val['age'] >= 18 && val['age'] < 65
    val['age_group'] = 'adult'
  else
    val['age_group'] = 'senior'
  end
end

p munsters
