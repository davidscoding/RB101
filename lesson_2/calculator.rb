# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on hte two numbers
# output the result
Kernel.puts("Welcome to the Calculator Zone!")

Kernel.puts("Please enter the first number")
number1 = Kernel.gets().chomp().to_i()

Kernel.puts("Please enter the second number")
number2 = Kernel.gets().chomp().to_i()

Kernel.puts("What operation would you like to perform? 1) add 2) subtract 3) multiply 4) divide")
operator = Kernel.gets().chomp().to_i()

if operator == 1
  result = number1 + number2
elsif operator == 2
  result = number1 - number2
elsif operator == 3
  result = number1 * number2
elsif operator == 4
  result = number1.to_f() / number2.to_f()
else
  result = "Invalid input please enter a valid operation between 1 and 4!  1) add 2) subtract 3) multiply 4) divide "
end

Kernel.puts("The result is: #{result}")