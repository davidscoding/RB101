# # 1

# flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
# hash = {}
# flintstones.each_with_index do |name, index|
#   hash[name] = index
# end
# p hash

# # 2

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

# p ages.values.sum

# # 3

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
# ages.select! do |_, age|
#   age < 100
# end
# p ages

# # 4

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
# p ages.values.min

# # 5

# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# # index = nil
# # flintstones.each_with_index do |name, dex|
# #   if name[0,2] == "Be"
# #     index = dex
# #     break
# #   end
# # end

# index = flintstones.index {|name| name[0,2] == "Be"}

# p index

# # 6

# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# flintstones.map! do |name|
#   name[0,3]
# end
# p flintstones

# 7

# statement = "The Flintstones Rock"
# hash = {}
# letters = ('a'..'z').to_a + ('A'..'Z').to_a
# statement.chars.each do |char|
#   if hash.key?(char) && letters.include?(char)
#     hash[char] += 1
#   else
#     hash[char] = 1
#   end
# end
# p hash


# result = {}
# letters = ('A'..'Z').to_a + ('a'..'z').to_a

# letters.each do |letter|
#   letter_frequency = statement.count(letter)
#   result[letter] = letter_frequency if letter_frequency > 0
# end

# # 8

# 1,3
# 1,2

# # 9

# words = "the flintstones rock"

# def titlelize (string)
#   title_array = string.split(' ')
#   title_array.map! {|word| word.capitalize}
#   title_array.join(' ')
# end

# p titlelize(words)

# # 10

# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }

# munsters.each do |key, value|
#   value['age_group']  = case value['age']
#                         when (0..17) then "kid"
#                         when (18..64) then "adult"
#                         else "senior" 
#                         end
# end

# p munsters

def swap(string)
  word_arr = string.split(' ')
  swapped_arr = word_arr.map do |word|
    word[0], word[-1] = word[-1], word[0]
  end
  p swapped_arr
  p swapped_arr.join(' ')
end

swap("abcde qwerty wxyz ABCDE")