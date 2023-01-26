# 1

# def short_long_short(string1, string2)
#   short = string1.length > string2.length ? string2 : string1
#   long = string1.length > string2.length ? string1 : string2
#   short + long + short
# end

# p short_long_short('abc', 'defgh') == "abcdefghabc"
# p short_long_short('abcde', 'fgh') == "fghabcdefgh"
# p short_long_short('', 'xyz') == "xyz"

# 2

=begin

Input: integer
Output: string

Rules:

1) two parts: number + suffix
2) number: (year / 100 + 1)
3) suffix: st, nd, rd, th
4) suffix: th for 1X centuries 

Data Structures:

Prefix: int => string
Suffix: hash with last

Algorithm

Initialize suffix hash
Obtain number - math
String version number conversion
if second to last digit is 1
  set suffix to th
else
  use last digit to check hash and set suffix
end
concatenate

=end

# def century(year)
#   hash = {'0'=>'th','1'=>'st','2'=>'nd','3'=>'rd','4'=>'th',
#             '5'=>'th','6'=>'th','7'=>'th','8'=>'th','9'=>'th'}
#   suffix = ""
#   num_century = (year - 1) / 100 + 1
#   century = num_century.to_s

#   suffix = century[-2] == '1' ? "th": hash[century[-1]]

#   century + suffix
# end

# p century(2000) == '20th'
# p century(2001) == '21st'
# p century(1965) == '20th'
# p century(256) == '3rd'
# p century(5) == '1st'
# p century(10103) == '102nd'
# p century(1052) == '11th'
# p century(1127) == '12th'
# p century(11201) == '113th'

# 3 + 4

# # In: number
# # Out: boolean

# # Rules:

# # 1) if divisible by 400, it is a leap years
# # 2) else if divisible by 100 it is not a leap year
# # 3) else if divisible by 4 it is a leap year
# # else it is not a leap year 

# def leap_year?(year)
#   if year >= 1752
#     case
#     when year % 400 == 0  then return true
#     when year % 100 == 0  then return false
#     when year % 4 == 0    then return true
#     else return false
#     end
#   end
#   year % 4 == 0
# end

# # p leap_year?(2016) == true
# # p leap_year?(2015) == false
# # p leap_year?(2100) == false
# # p leap_year?(2400) == true
# # p leap_year?(240000) == true
# # p leap_year?(240001) == false
# # p leap_year?(2000) == true
# # p leap_year?(1900) == false
# # p leap_year?(1752) == true
# # p leap_year?(1700) == false
# # p leap_year?(1) == false
# # p leap_year?(100) == false
# # p leap_year?(400) == true

# p leap_year?(2016) == true
# p leap_year?(2015) == false
# p leap_year?(2100) == false
# p leap_year?(2400) == true
# p leap_year?(240000) == true
# p leap_year?(240001) == false
# p leap_year?(2000) == true
# p leap_year?(1900) == false
# p leap_year?(1752) == true
# p leap_year?(1700) == true
# p leap_year?(1) == false
# p leap_year?(100) == true
# p leap_year?(400) == true

# # 5

# def multisum(num)
#   sum = 0
#   (num+1).times do |dex|
#     sum += dex if (dex % 3 == 0 || dex % 5 == 0)
#   end
#   sum
# end

# p multisum(3) == 3
# p multisum(5) == 8
# p multisum(10) == 33
# p multisum(1000) == 234168

# # 6

# def running_total(arr)
#   sum = 0
#   arr.map do |val|
#     sum += val
#   end
# end

# p running_total([2, 5, 13]) == [2, 7, 20]
# p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
# p running_total([3]) == [3]
# p running_total([]) == []

# # 7

# def string_to_integer(string_num)
#   num_hash = {'0'=>0,'1'=>1,'2'=>2,'3'=>3,'4'=>4,
#               '5'=>5,'6'=>6,'7'=>7,'8'=>8,'9'=>9}
#   arr = string_num.chars
#   num = 0
#   arr.each do |val|
#     num = num * 10 + num_hash[val]
#   end
#   num
# end

# # p string_to_integer('4321') == 4321
# # p string_to_integer('570') == 570

# # 8

# def string_to_signed_integer(string)
#   if string[0] == '-'
#     return -string_to_integer(string[1,string.length-1])
#   elsif string[0] == '+'
#     return string_to_integer(string[1,string.length-1])
#   end
#   string_to_integer(string)
# end

# p string_to_signed_integer('4321') == 4321
# p string_to_signed_integer('-570') == -570
# p string_to_signed_integer('+100') == 100

# # 9

# def integer_to_string(num)
#   return '0' if num == 0

#   num_hash = {0=>'0',1=>'1',2=>'2',3=>'3',4=>'4',
#               5=>'5',6=>'6',7=>'7',8=>'8',9=>'9'}
#   string = ""

#   while num > 0
#     string.insert(0,num_hash[num % 10])
#     num = num / 10  
#   end

#   string
# end



# p integer_to_string(4321) == '4321'
# p integer_to_string(0) == '0'
# p integer_to_string(5000) == '5000'

# # 10

# def signed_integer_to_string(num)
#   return '0' if num == 0
#   sign = num > 0 ? '+' : '-'
#   sign + integer_to_string(num.abs)
# end

# p signed_integer_to_string(4321) == '+4321'
# p signed_integer_to_string(-123) == '-123'
# p signed_integer_to_string(0) == '0'