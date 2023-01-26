# 1

# Problem
# Input: string
# Output: hash {letter_symbol => letter_count}

# Rules
# 1) Only lowercase letters given
# 2) Return hash of unique characters as key 
# symbols linked to their integer count

# Examples
# p letter_count('codewars') == {:a=>1, :c=>1, :d=>1, :e=>1, :o=>1, :r=>1, :s=>1, :w=>1})
# p letter_count('activity') == {:a=>1, :c=>1, :i=>2, :t=>2, :v=>1, :y=>1}
# p letter_count('arithmetics') == {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2})

# Data Structures

# Input string
# Intermediate Array of unique characters
# Output hash

# Algo

# initialize empty output hash
# split string into an array
# reduce array down to its unique objects

# iterate through each of the arrays objects
#   count the amount of the array characters are in the string
#   convert the array object to symbel to be used as key
#   add key value pair to hash where key is the character converted to a symbol and the value is the count

# return the output hash

# def letter_count (string)
#   hash = {}
#   arr = string.chars.uniq

#   arr.each do |char|
#     val = string.count(char)
#     key = char.to_sym
#     hash[key]=val
#   end

#   hash
# end
# p letter_count('codewars') == {:a=>1, :c=>1, :d=>1, :e=>1, :o=>1, :r=>1, :s=>1, :w=>1}
# p letter_count('activity') == {:a=>1, :c=>1, :i=>2, :t=>2, :v=>1, :y=>1}
# p letter_count('arithmetics') == {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}

# # 2

# You are given array of integers, your task will be to count all pairs in that array and return their count.

# Notes:

# Array can be empty or contain only one value; in this case return 0
# If there are more pairs of a certain number, count each pair only once. E.g.: for [0, 0, 0, 0] the return value is 2 (= 2 pairs of 0s)
# Random tests: maximum array length is 1000, range of values in array is between 0 and 1000
# Examples
# [1, 2, 5, 6, 5, 2]  -->  2
# ...because there are 2 pairs: 2 and 5

# Input: Array
# Output: return Integer

# Rules:

# 1) Return the total pairs of each unique value
# 2) Once two equal integers have been counted as a pair, they no longer can be counted as a part of an additional pair.
# Other entries of an equal number can however be counted
# 3) If no pairs exist, output 0
# 4) Values will be between 0-1000 and array lengths will be between 0-1000
# 5) Pair count for a given value = entries / 2

# Data Structures:

# Input Array
# Intermediate Unique Array
# Output Counter Integer

# Algo

# initialize pair_count to 0
# initialize and assign Intermediate array to unique values of input array
# iterate through each value Intermediate unique array
#   count the instances of each value in the input array
#   add (instance count / 2) <= (total pairs of current value) to the sum
#   move onto next unique value
# return pair count

# def find_pairs(arr)

#   pairs = 0
#   unique_arr = arr.uniq

#   unique_arr.each do |val|
#     instance_count = arr.count(val)
#     pair_count = instance_count / 2
#     pairs += pair_count
#   end

#   pairs

# end

# p find_pairs([0,0,0,0])
# p find_pairs([1,2,3,4,3])
# p find_pairs([0,0,1,2,1,1])
# p find_pairs([1,2,5,6,5,2])

# # 3
# unclear how to handle shiftable edge case, ie:
# "aaa","aa" => does this have one instance or 2? 

# def sub(main,target)
#   count = 0
#   while main.index(target)
#     main.slice!(main.index(target),target.length)
#     count+= 1
#   end
#   count
# end

# 4
=begin
-----Problem
Consider the word "abode". We can see that the letter a is in position
1 and b is in position 2. In the alphabet, a and b are also in 
positions 1 and 2. Notice also that d and e in abode occupy the 
positions they would occupy in the alphabet, which are positions 4 and 5.

Given an array of words, return an array of the number of letters that 
occupy their positions in the alphabet for each word. For example

Input: array of strings
Output: array of ints

Rules:

1) Each index of output array outputs the corresponding input strings 
alphabetically ordered letters count
2) Case does not matter
3) Letters only care about their index within the string, not the values of the surrounding characters

-----Examples

p solve(["abode","ABc","xyzD"]) == [4,3,1]
p solve(["abide","ABc","xyz"]) == [4,3,0]
p solve(["IAMDEFANDJKL","thedefgh","xyzDEFghijabc"])== [6,5,7]

-----Data Structures

Input:          Array of strings

Intermediate:   Individual downcased strings
                Downcased string array
                Alphabet dictionary array

Output:         Array of ints

-----Algorithim
Initialize and assign alphabet dictionary constant array

Solve:
Initialize empty output array
Iterates through input array, for each entry
  Sets letter count = method call letter counter on string
  concatenates letter count onto output array
returns output array

letter counter takes in string outputs int:
Initializes and sets counter to 0
Initializes and assign array to string with chars split up
Iterates through string array with index
  compares counter to string array at current index
    if theyre equal increment counter
    else next
return counter

-----Code

=end

# ALPHABETDICTIONARY = ('a'..'z').to_a

# def solve (string_array)
#   count_array = []
#   string_array.each do |string|
#     count_array << letter_counter(string)
#   end
#   count_array
# end

# def letter_counter(string)
#   counter = 0
#   char_array = string.chars
#   char_array.each_with_index do |char, dex|
#     ALPHABETDICTIONARY[dex]==char.downcase ? counter += 1 : next
#   end
#   counter
# end

# p solve(["dumdeave"])
# p solve(["abide","ABc","xyz"]) == [4,3,0]
# p solve(["IAMDEFANDJKL","thedefgh","xyzDEFghijabc"])== [6,5,7]

# 5
=begin
-----Problem
Find the longest vowel chain in an input string of only lowercased characters (no spaces) 
and return the length

Input: String of lowercased letters
Output: Int of largest length of vowels in a row

1) Return the length of the longest chain of vowels in a string
2) Only lowercase letters are input

-----Examples
p solve("codewarriors") == 2
p solve("suoidea") == 3
p solve("iuuvgheaae") == 4
p solve("ultrarevolutionariees") == 3
p solve("strengthlessnesses") == 1
p solve("cuboideonavicuare") == 2
p solve("chrononhotonthuooaos") == 5
p solve("iiihoovaeaaaoougjyaw") == 8

-----Data Structures
Input:        string

Intermediate  max count
              current count
              vowel dictionary string

Output:       count

-----Algorithim
Solve
initialize vowel dictionary string
initialize max count to 0
initialize current count to 0
iterate through each character of the string
  if character is in vowel dictionary
    increment count
    set max count to maximum of max count and count
  else
    set count to 0
return max count

-----Code
=end

# def solve (string)
#   vowels = "aeiou"
#   max_count = 0
#   current_count = 0
#   string.each_char do |char|
#     if vowels.include?(char)
#       current_count += 1
#       max_count = [max_count,current_count].max
#     else
#       current_count = 0
#     end
#   end
#   max_count 
# end

# p solve("codewarriors") == 2
# p solve("suoidea") == 3
# p solve("iuuvgheaae") == 4
# p solve("ultrarevolutionariees") == 3
# p solve("strengthlessnesses") == 1
# p solve("cuboideonavicuare") == 2
# p solve("chrononhotonthuooaos") == 5
# p solve("iiihoovaeaaaoougjyaw") == 8

# 6

=begin

-----Problem
Given a string of integers, return the number of odd-numbered substrings that can be formed.

For example, in the case of "1341", they are 1, 1, 3, 13, 41, 341, 1341, a total of 7 numbers.

Input: String on numbers

Output: Integer Count of odd substrings

Rules
1) Given an integer in string form, return total number of odd substrings
2) Assume string with integer input

-----Examples
p solve("1341") == 7
p solve("1357") == 10
p solve("13471") == 12
p solve("134721") == 13
p solve("1347231") == 20
p solve("13472315") == 28

-----Data Structures
Input:        String integer

Intermediate: Odd digit dictionary
              Character array
              Sum

Output:       Integer count

-----Algorithim
Initialize:
Initialize odd integer dictionary
Initialize character array to string integer broken up
Initialize sum to 0

iterate through each character of the character array with index
  if character is odd
    sum = sum + (index + 1) #<= (This adds the count for all the numbers that can be formed with that odd value at the end)
  else
    next

return sum
-----Code
=end

# def solve (string)
#   odds = "13579"
#   digits = string.chars
#   sum = 0

#   digits.each_with_index do |digit, index|
#     if odds.include?(digit)
#       sum += (index + 1)
#     end
#   end

#   sum
# end

# p solve("1341") == 7
# p solve("1357") == 10
# p solve("13471") == 12
# p solve("134721") == 13
# p solve("1347231") == 20
# p solve("13472315") == 28

# 7
=begin
-----Problem
You must concatenate the nth letter from each word to construct a new word which should be returned as a string, where n is the position of the word in the list.

For example:

["yoda", "best", "has"]  -->  "yes"
  ^        ^        ^
  n=0     n=1     n=2

Input: Array of strings
Output: String

Rules
1) output string takes nth letter (string position in array) from each letter to build
2) no non-conforming input arrays/strings
3) keep capitalization

-----Examples
p nth_char(['yoda', 'best', 'has']) == 'yes'
p nth_char([]) == ''
p nth_char(['X-ray']) == 'X'
p nth_char(['No', 'No']) == 'No'
p nth_char(['Chad', 'Morocco', 'India', 'Algeria', 'Botswana', 'Bahamas', 'Ecuador', 'Micronesia']) ==  'Codewars'

-----Data Structures
Input: Array of strings
Output: Concatenated String

-----Algorithim
Initialize output string to ""
Iterate through array of strings with index
  Concatenate output string with char of string at index
return output string

-----Code
=end

# def nth_char (string_array)
#   output = ""
#   string_array.each_with_index do |string, index|
#     output << string[index]
#   end
#   output
# end

# p nth_char(['yoda', 'best', 'has']) == 'yes'
# p nth_char([]) == ''
# p nth_char(['X-ray']) == 'X'
# p nth_char(['No', 'No']) == 'No'
# p nth_char(['Chad', 'Morocco', 'India', 'Algeria', 'Botswana', 'Bahamas', 'Ecuador', 'Micronesia']) ==  'Codewars'

# 8
=begin
-----Problem
For a given nonempty string s find a minimum substring t and the maximum number k, such that 
the entire string s is equal to t repeated k times. The input string consists of lowercase 
latin letters. Your function should return a tuple (in Python) (t, k) or an array 
(in Ruby and JavaScript) [t, k]

Input: String

Output: Array of [smallest repeated unit, number of times repeated]

Rules 
1) Takes string and returns array with smallest repeated unit and number of times repeated
2) Unit must be fully repeated ie no partial rerpeats at the end
3) String must be made solely of repeated units
4) Only lowercase letters

#Not much explaination/examples here so making my own rules based on assumptions

-----Examples
p f(“abcde”) == [“abcde”,1]
p f("ababab") == ["ab", 3]

-----Data Structures
Input: String

Intermediate: Comparision strings of possible repeats

Output: Array of [smallest repeated unit, number of times repeated]

-----Algorithim

loop number of length of input string times
  Take slice of first (count) letters * string length / count <= make repeated string from first count letters substring
  If new repeated string is equal to the input string
    return [substring, string length / count]

-----Code
=end

# def f (string)
#   length = string.length
#   length.times do |index|
#     if string == string[0, index + 1] * (length / (index + 1))
#       return [(string[0, index + 1]), (length / (index + 1))]
#     end
#   end
# end

# p f("abcde") == ["abcde",1]
# p f("ababab") == ["ab", 3]

# 9
=begin
-----Problem
In this kata we will make a generator that generates text in a similar pattern, but instead of scrambled or reversed, ours will be sorted alphabetically

Requirement
return a string where:

1) the first and last characters remain in original place for each word
2) characters between the first and last characters must be sorted alphabetically
3) punctuation should remain at the same place as it started, for example: shan't -> sahn't

Input: String of words with punctuation
Output: String of words with the inner characters alphabetized

Assumptions

1) words are separatedseperated by single spaces
2) only spaces separate words, special characters do not, for example: tik-tak -> tai-ktk
3) special characters do not take the position of the non special characters, for example: -dcba -> -dbca
4) for this kata punctuation is limited to 4 characters: hyphen(-), apostrophe('), comma(,) and period(.)
5) ignore capitalisation

-----Examples

p scramble_words('professionals') == 'paefilnoorsss'
p scramble_words('i') == 'i'
p scramble_words('') == ''
p scramble_words('me') == 'me'
p scramble_words('you') == 'you'
p scramble_words('card-carrying') == 'caac-dinrrryg'
p scramble_words("shan't") == "sahn't"
p scramble_words('-dcba') == '-dbca'
p scramble_words('dcba.') == 'dbca.'
p scramble_words("you've gotta dance like there's nobody watching, love like you'll never be hurt, sing like there's nobody listening, and live like it's heaven on earth.") == "you've gotta dacne like teehr's nbdooy wachintg, love like ylo'ul neevr be hrut, sing like teehr's nbdooy leiinnstg, and live like it's haeevn on earth."

-----Data Structures

Input:          String of words with punctuation

Intermediate
Main Method:    Array of words
                Array of converted words

Intermediate
word method:    String
                Hash of index-punction locations
                Char array of internal characters

Output:         String of words with the inner characters alphabetized

-----Algorithim

Main Method

  Initialize Array of words to words split by spaces
  Initialize empty Array of converted words
  Iterate through each word in array of words
    convert each word (call)
    append each converted word to the array of converted words
  join array of converted words with spaces and return

Word conversion

  Input:  unconverted string
  Output: converted string

  Initialize hash, letters string - call Split type (unconverted string)
  Initialize sorted letters - Call letters sort on letters string
  return merge sorted letters + hash 


word merge

  Input: sorted letter string + hash
  Output: sorted word string

  Initialize letter index
  Initialize total index max to hash entries + string length
  Initialize output word

  Loop total index max times
    if hash has key current index
      output word concatenate hash value for key
      next
    else
      output word concatenates letter at letter index
      increment letter index
  return output word


split type

  Input: word string with punctuation
  Output: hash, string

  Initialize array of characters from input string
  Iterate through array of characters with index
    if character not a letter
      add hash[key of index] to value of character
      delete character from string
  return hash, string

Letters sort

  Input: letters only word string
  Output: Sorted/converted letters only word string

  Initialize array of letters from input string
  Initialize first letter string to first object
  Initialize last letter string to last object
  Remove first and last entries from array
  Sort array entries
  return Concatenated first letter + sorted array + final letter
-----Code
=end
# def scramble_words (string)
#   words = string.split(" ")
#   converted_words = []
#   words.each do |word|
#     converted_words << word_conversion(word)
#   end
#   converted_words.join(" ")
# end

# def word_conversion (raw_word)
#   hash, letters_string = split_by_type(raw_word)
#   sorted_letters = letters_sort(letters_string)
#   merge(hash, sorted_letters)
# end

# def merge (punction_hash, sorted_letters)
#   letter_index = 0
#   sorted = ""
#   total = punction_hash.size + sorted_letters.length

#   total.times do |index|
#     if punction_hash.key?(index)
#       sorted << punction_hash[index]
#       next
#     else
#       sorted << sorted_letters[letter_index]
#       letter_index += 1
#     end
#   end

#   return sorted
# end

# def split_by_type (raw_word)
#   alphabet = ('a'..'z').to_a
#   hash = {}
#   letters = raw_word.clone
#   array = raw_word.chars
#   punctuation_count = 0

#   array.each_with_index do |char, index|
#     unless alphabet.include?(char)
#       hash[index] = char
#       letters.slice!(index - punctuation_count)
#       punctuation_count += 1
#     end
#   end
#   return hash, letters
# end

# def letters_sort (unconverted)
#   return unconverted if unconverted.length <= 2
#   array = unconverted.chars[1,unconverted.length - 2]
#   unconverted[0] + array.sort.join + unconverted [-1]
# end

# p scramble_words('professionals') == 'paefilnoorsss'
# p scramble_words('i') == 'i'
# p scramble_words('') == ''
# p scramble_words('me') == 'me'
# p scramble_words('you') == 'you'
# p scramble_words("card-carrying z'qrsa'bcd")
# p scramble_words("shan't") == "sahn't"
# p scramble_words('-dcba') == '-dbca'
# p scramble_words('dcba.') == 'dbca.'
# p scramble_words("you've gotta dance like there's nobody watching, love like you'll never be hurt, sing like there's nobody listening, and live like it's heaven on earth.") == "you've gotta dacne like teehr's nbdooy wachintg, love like ylo'ul neevr be hrut, sing like teehr's nbdooy leiinnstg, and live like it's haeevn on earth."


# 10
=begin
-----Problem
  Write a function that, given a string of text (possibly with punctuation and line-breaks), 
  returns an array of the top-3 most occurring words, in descending order of the number of occurrences.

  Input: String of text
  Output: Array of top 3 most used words

  Rules:
  1) Words denoted by spaces
  2) All answers should be in lowercase and this method should not be case sensative (ie "Dd" == "dd is true")
  3) Array should have top three most commonly used words in order
  4) If there's a tie you can break arbitrarily
  5) If fewer than 3 words just do the ones available
  6) If 0 words just output an empty array
  7) words shouldn't have non apostrophe characters, completely delete
  8) ' make words unique by needs letters to make a word

-----Examples

  p top_3_words("a a a  b  c c  d d d d  e e e e e") == ["e", "d", "a"]
  p top_3_words("e e e e DDD ddd DdD: ddd ddd aa aA Aa, bb cc cC e e e") == ["e", "ddd", "aa"]
  p top_3_words("  //wont won't won't ") == ["won't", "wont"]
  p top_3_words("  , e   .. ") == ["e"]
  p top_3_words("  ...  ") == []
  p top_3_words("  '  ") == []
  p top_3_words("  '''  ") == []


-----Data Structures

  Input: String of text

  Intermediate: Array of words

  Output: Array of top 3 most used words

-----Algorithim

Methods 

top_3_words: 1
  Input: string of text
  Output: array of top 3 words
  Initialize array of text blocks to string of text split by spaces
  Initialize and assign filtered array: Call word filterer and pass in array of text blocks
  return call on word counter, pass in filtered array as argument 


word filterer 2
  Input: array of text blocks (strings)
  Output: array of filtered words (strings)
  Initialize empty filter words array
  Iterate through array of blocks
    word = call on checker (current block)
    if word length > 0
      concatenate filter words array with word
  return filtered words

word checker 2b
  Input: Unfiltered text block
  Output: true word
  Initialize dictionary array
  char array = convert word to lowercase array
  if word doesnt have alphabet letter
    return ""
  else
    iterate through characters array
      if character not in dictionary or ', then delete it from array
  join

Word counter 3
  Input: array of filtered words
  Output: array of top 3 words

  Initialize empty word count hash
  iterate through each word in filtered words
    if word count hash has word increment value
    else add word count key of current word and value of 1
  Initialize words count array to converted hash
  Sort words count array by count
  return first three word keys from sorted arrays 

-----Code
=end

# def top_3_words(text_string)
#   text_blocks = text_string.split(" ")
#   filtered_array = word_filterer(text_blocks)
#   word_counter(filtered_array)
# end

# def word_filterer(text_array)
#   filtered_array = []
#   text_array.each do |text|
#     word = word_checker(text)
#     if word.length > 0
#       filtered_array << word
#     end
#   end
#   filtered_array
# end

# def word_checker(text_block)
#   dictionary = ('a'..'z').to_a
#   text_block.downcase!
#   char_array = text_block.chars
#   valid = false
#   deleted_num = 0

#   char_array.each do |char|
#     if dictionary.include?(char)
#       valid = true
#       break
#     end
#   end
#   return "" if !valid

#   char_array.select! do |char|
#     dictionary.include?(char) || char == "'"
#   end
#   char_array.join
# end

# def word_counter(filtered_array)
#   word_count_hash = {}
#   output = []

#   filtered_array.each do |word|
#     if word_count_hash.key?(word)
#       word_count_hash[word] += 1
#     else
#       word_count_hash[word] = 1
#     end
#   end

#   word_count_array = word_count_hash.to_a
#   word_count_array.sort! do |a,b|
#     b[1] <=> a[1]
#   end

#   [3,word_count_array.length].min.times do |index|
#     output << word_count_array[index][0]
#   end

#   return output
# end

# p top_3_words("a a a  b  c c  d d d d  e e e e e") == ["e", "d", "a"]
# p top_3_words("e e e e DDD ddd DdD: ddd ddd aa aA Aa, bb cc cC e e e") == ["e", "ddd", "aa"]
# p top_3_words("  //wont won't won't ") == ["won't", "wont"]
# p top_3_words("  , e   .. ") == ["e"]
# p top_3_words("  ...  ") == []
# p top_3_words("  '  ") == []
# p top_3_words("  '''  ") == []


# 11
=begin
-----Problem
      Write a function that when given a URL as a string, parses out just the domain name and returns it as a string. For example:

      Input:  URL string
      Output: Domain Substring

      Rules: 
      1) Return domain name, substring of url
      2) Don't include http, www or punctuation leading up to domain name
      3) Break domain name after period (no period in the domain name)
      4) Assume you're getting a proper url in

-----Examples

domain_name("http://github.com/carbonfive/raygun") == "github" 
domain_name("http://www.zombie-bites.com") == "zombie-bites"
domain_name("https://www.cnet.com") == "cnet"

p domain_name("http://google.com") == "google"
p domain_name("http://google.co.jp") == "google"
p domain_name("www.xakep.ru") == "xakep"
p domain_name("https://youtube.com") == "youtube"

-----Data Structures

      Input:  URL string

      Intermediate: Prefix dictionary

      Output: Domain Substring

-----Algorithim
Initial url copy = input url
Initialize prefix dictionary, array of http, https and www + punctuation
Iterate through array
  if URL copy starts with prefix
    delete prefix
Delete from first period of url to end
-----Code
=end
# def domain_name (url)
#   url_copy = url.clone
#   prefix_dictionary = ["https://","http://","www."]
#   prefix_dictionary.each do |prefix|
#     if url_copy.start_with?(prefix)
#       url_copy.slice!(0,prefix.length)
#     end
#   end
#   url_copy[0,url_copy.index(".")]
# end

# 12
=begin
-----Problem
A pangram is a sentence that contains every single letter of the alphabet at least once. For example, the sentence "The quick brown fox jumps over the lazy dog" is a pangram, because it uses the letters A-Z at least once (case is irrelevant).

Given a string, detect whether or not it is a pangram. Return True if it is, False if not. Ignore numbers and punctuation

Input: String
Output: Boolean

Rules:

1) Find if string has every single letter
2) Punctuation + caps don't matter

-----Examples

p panagram?("The quick brown fox jumps over the lazy dog.") == true
p panagram?("This is not a pangram.") == false


-----Data Structures
Input: String

Intermediate: Alphabet dictionary array

Output: Boolean

-----Algorithim

Initialize Dictionary
Iterate through dictionary, each letter
  unless string.downcase includes letter
    return false
return true

-----Code
=end

# def panagram?(string)
#   alphabet = ('a'..'z').to_a
#   lowercased = string.downcase
#   alphabet.each do |letter|
#     unless lowercased.include?(letter)
#       return false
#     end
#   end
#   true
# end

# p panagram?("The quick brown fox jumps over the lazy dog.") == true
# p panagram?("This is not a pangram.") == false


# 13
=begin
-----Problem
Modify the kebabize function so that it converts a camel case string into a kebab case.

kebabize('camelsHaveThreeHumps') // camels-have-three-humps
kebabize('camelsHave3Humps') // camels-have-humps
Notes:

the returned string should only contain lowercase letters

Input: CamelCased String
Output: Snake String

Rules:
1) Input string capitals denote beginning of words
2) Output words should all be lowercased and separated by a hyphen
3) Function deletes non-alphabet characters

-----Examples

p kebabize('myCamelCasedString') == 'my-camel-cased-string'
p kebabize('myCamelHas3Humps') == 'my-camel-has-humps'

-----Data Structures

Input: CamelCased String

Intermediate: String Char arrat
              Alphabet Only string
              Dictionary (uppercased)

Output: Snake String

-----Algorithim

kebabize
  alphabet_filter: string => string only letters
    Initialize String copy
    Initialize string char array
    initialize alphabet dictionary
    Iterate through string char array
      if char not in alphabet
        delete char from the string copy
    return string copy

  snake_case_converter: string only letters => snake cased
    Initialize uppercase alphabet dictionary array
    Initialize letters string array
    Iterate through letters string array
      if letter in uppercase alphabet
        swap out letters in string for hyphen + lower cased
    return string

-----Code
=end

# def kebabize (string)
#   snake_case_converter(alphabet_filter(string))
# end

# def alphabet_filter (string)
#   letter_string = string.clone
#   string_array = string.chars
#   alphabet = (('a'..'z').to_a << ('A'..'Z').to_a).flatten

#   string_array.each do |char|
#     unless alphabet.include?(char)
#       letter_string.delete!(char)
#     end
#   end

#   letter_string
# end

# def snake_case_converter (camel)
#   snake = camel.clone
#   upper_abc = ("A".."Z").to_a
#   string_array = camel.chars
#   string_array.each do |letter|
#     if upper_abc.include?(letter)
#       snake.gsub!(letter,"-#{letter.downcase}")
#     end
#   end
#   snake
# end

# p kebabize('myCamelCasedString') == 'my-camel-cased-string'
# p kebabize('myCamelHas3Humps') == 'my-camel-has-humps'

# def kebabize (string)
# end

# 14
=begin
-----Problem


-----Examples


-----Data Structures


-----Algorithim


-----Code
=end


