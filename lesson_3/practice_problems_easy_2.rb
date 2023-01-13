# # 1

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# puts ages.key?("Spot")
# puts ages.include?("Spot")
# puts ages.has_key?("Spot")
# puts !!ages["Spot"]
# puts ages.member?("Spot")

# puts !!ages["Spot"]
# puts ages.include?("Spot")
# puts ages.member?("Spot")
# puts ages.has_key?("Spot")

# # 2

# munsters_description = "The Munsters are creepy in a good way."
# p munsters_description.swapcase!
# p munsters_description.downcase!
# p munsters_description.upcase!
# p munsters_description.capitalize!

# p munsters_description.swapcase!

# munsters_description = "The Munsters are creepy in a good way."
# p munsters_description.downcase!

# munsters_description = "The Munsters are creepy in a good way."
# p munsters_description.upcase!

# munsters_description = "The Munsters are creepy in a good way."
# p munsters_description.capitalize!

# # 3

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
# additional_ages = { "Marilyn" => 22, "Spot" => 237 }

# ages.merge!(additional_ages)
# puts ages

# # 4

advice = "Few things in life are as important as house training your pet dinosaur."

# puts advice.include?("Dino")
# puts advice.match?("Dino")

# 5

# flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]
# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# puts flintstones

# # 6

# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# flintstones.push('Dino')
# flintstones << "Dino"

# # 7

# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# flintstones.push('Dino').push('Hoppy')
# flintstones.concat(%w(Dino Hoppy))

# 8

# advice = "Few things in life are as important as house training your pet dinosaur."
# p advice.slice!(0,advice.index('house'))
# p advice

# 9

# statement = "The Flintstones Rock!"
# p statement.count('t')

# # 10

# title = "Flintstone Family Members"
# p title.center(40)

