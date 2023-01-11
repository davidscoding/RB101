# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on hte two numbers
# output the result
require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')
# puts MESSAGES.inspect

def messages(message, lang='es')
  MESSAGES[lang][message]
end

def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  num.to_f.to_s == num || num.to_i.to_s == num
end

def operation_to_message(op)
  case op
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing '
  end
end

# prompt("Welcome to the Calculator Zone! Enter your name:")
prompt(messages('welcome'))

name = ""
loop do
  name = Kernel.gets().chomp()
  if name.empty?()
    prompt("Make sure to use a valid name.")
  else
    break
  end
end

number1 = ""
number2 = ""

loop do
  prompt("Hi #{name}!")
  loop do
    Kernel.puts("Please enter the first number:")
    number1 = Kernel.gets().chomp()
    if valid_number?(number1)
      break
    else
      prompt("Hmm... that doesn't look like a valid number")
    end
  end

  loop do
    Kernel.puts("Please enter the second number:")
    number2 = Kernel.gets().chomp()
    if valid_number?(number2)
      break
    else
      prompt("Hmm... that doesn't look like a valid number")
    end
  end

  operator_prompt = <<-MSG
    What operation would you like to perform?
    Please enter one of the following:
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG
  prompt(operator_prompt)
  operator = ""
  loop do
    operator = Kernel.gets().chomp()
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Invalid input! Please enter 1, 2, 3, or 4:")
    end
  end

  prompt("#{operation_to_message(operator)}
  the two numbers #{number1} and #{number2}")
  Time.new
  sleep(0.5)
  prompt('.')
  sleep(0.5)
  prompt('..')
  sleep(0.5)
  prompt('...')
  sleep(0.5)
  number1 = number1.to_f
  number2 = number2.to_f

  if operator == '1'
    result = number1 + number2
  elsif operator == '2'
    result = number1 - number2
  elsif operator == '3'
    result = number1 * number2
  else
    result = number1.to_f() / number2.to_f()
  end

  prompt("The result is: #{result}")
  prompt("Do you want to perform another calculation? (y/n)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for using the calculator, goodbye!")
