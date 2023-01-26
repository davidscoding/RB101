# Easy 1

# 1

# numbers = [1,2,2,3]
# numbers.uniq
# puts numbers

# expect unmodified original numbers value since .uniq doesn't mutate

# 2

# ! prefix: binary flip
# ? prefix: unknown, ternary?
# ! suffix: method mutates the caller
# ? suffix: method condition true or false?
# !! prefix: truthy or falsey binary value

# 3

# advice = "Few things in life are as important as house training your pet dinosaur."
# advice.gsub!('important','urgent')

# 4

# numbers = [1, 2, 3, 4, 5]

# numbers.delete_at(1)
# at index 1
# numbers.delete(1)
# deletes all 1's

# 5

# range(10..100).cover?(42)

# 6

# famous_words = "seven years ago..."
# "Four score and " << famous_words
# famous_words.insert(0,'Four score and ')
# famous_words.prepend("Four score and ")

# # 7
# flintstones = ["Fred", "Wilma"]
# flintstones << ["Barney", "Betty"]
# flintstones << ["BamBam", "Pebbles"]
# flintstones.flatten!

# # 8

# flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
# flintstones.assoc("Fred")


# Easy 2

# 1

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# ages.key?("Spot")
# ages.has_key?("Spot")
# !!ages["Spot"]
# ages.member("Spot")

# 2

# munsters_description = "The Munsters are creepy in a good way."
# munsters_description.swapcase!
# munsters_description.downcase!
# munsters_description.upcase!
# munsters_description.capitalize!

# # 3

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
# additional_ages = { "Marilyn" => 22, "Spot" => 237 }
# ages.merge!(additional_ages)

# # 4

# advice = "Few things in life are as important as house training your pet dinosaur."
# advice.match?("Dino")

# # 5

# # flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]
# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# p flintstones

# # 6

# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# flintstones << "Dino"

# # 7

# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# flintstones.concat(["Spot","Cat"])
# flintstones.push("Spot").push("Cat")

# # 8

# advice = "Few things in life are as important as house training your pet dinosaur."

# advice.slice!(0,advice.index("house"))

# # 9

# statement = "The Flintstones Rock!"
# statement.count('t')

# # 10

# title = "Flintstone Family Members"

# title.center(40)

# Medium 1

# 1

# 20.times{|num| puts (" "*(10-(num-10).abs))+ "Tonight's gonna be a movie"}

# 2

# puts "the value of 40 + 2 is " + (40 + 2).to_s
# puts "the value of 40 + 2 is #{40+2}"

# 3

def factors(number)
  divisor = number
  factors = []
  while divisor > 0
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end
  factors
end
