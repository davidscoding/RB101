# # 1

# a = "forty two"
# b = "forty two"
# c = a

# puts a.object_id
# # val1

# puts b.object_id
# # val2

# puts c.object_id
# # val1

# # 2

# a = 42
# b = 42
# c = a

# puts a.object_id
# # val1

# puts b.object_id
# # val1

# puts c.object_id
# # val1

# numbers are immutable objects and thus always have the same object id

# # 3

# # def tricky_method(a_string_param, an_array_param)
# #   a_string_param += "rutabaga"
# #   an_array_param << "rutabaga"
# # end

# # my_string = "pumpkins"
# # my_array = ["pumpkins"]
# # tricky_method(my_string, my_array)

# # puts "My string looks like this now: #{my_string}"
# pumpkins

# # puts "My array looks like this now: #{my_array}"
# pumpkins, rutabaga

# 4

# def tricky_method_two(a_string_param, an_array_param)
#   a_string_param << 'rutabaga'
#   an_array_param = ['pumpkins', 'rutabaga']
# end

# my_string = "pumpkins"
# my_array = ["pumpkins"]
# tricky_method_two(my_string, my_array)

# puts "My string looks like this now: #{my_string}"
# pumpkinsrutabaga

# puts "My array looks like this now: #{my_array}"
# pumpkins

# 5

# def tricky_method(a_string_param, an_array_param)
#   a_string_param += "rutabaga"
#   an_array_param += ['rutabaga']
#   return a_string_param, an_array_param
# end

# my_string = "pumpkins"
# my_array = ["pumpkins"]
# my_string, my_array = tricky_method(my_string, my_array)

# puts "My string looks like this now: #{my_string}"
# puts "My array looks like this now: #{my_array}"

# # 6

# def color_valid(color)
#   color == "blue" || color == "green"
# end
