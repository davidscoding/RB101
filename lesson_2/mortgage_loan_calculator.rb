# mortgage loan calculator
# inputs:
#   loan amount
#   annual percentage rate (apr)
#   loan duration (years)
# outputs:
#   monthly interest rate
#   loan duration (months)
#   monthly payment

# methods

def prompt(message)
  puts "=> #{message}"
end

def valid_positive_int?(val)
  (val.to_i.to_s == val) && (val.to_i > 0)
end

def valid_apr?(val)
  if val.to_f >= 0
    (val.to_i.to_s == val) || (val.to_f.to_s == val)
  else
    false
  end
end

def calc_monthly_interest_rate(apr)
  apr.to_f / 12
end

def calc_loan_duration_months(years)
  years.to_i * 12
end

def calc_monthly_payment(loan_amount,
                         monthly_interest_rate,
                         loan_duration_months)
  loan_int = loan_amount.to_i
  loan_int * (monthly_interest_rate * 0.01 / (1 -
  (1 + monthly_interest_rate * 0.01)**(-loan_duration_months)))
end

# program execution

# introduction

prompt("Welcome to the mortgage loan calculator! Please enter your name:")
name = gets.chomp
loop do
  prompt("Hi #{name}! Let's get started.")

  # loan amount input

  loan_amount = ""
  loop do
    prompt("Please enter the total loan amount:")
    loan_amount = gets.chomp
    break if valid_positive_int?(loan_amount)
    prompt("Invalid input, value must be a positive integer")
  end
  prompt("You entered a loan amount of #{loan_amount} dollars")

  # APR input

  apr = ""
  apr_prompt = <<-MSG
  Please enter the Annual Percentage Rate (APR):
  APR is represented as its percentage value
  Example: to enter a 5% APR enter the value '5'
  MSG

  loop do
    prompt(apr_prompt)
    apr = gets.chomp
    break if valid_apr?(apr)
    prompt("Invalid input, value must non-negative number")
  end
  prompt("You entered a loan Annual Percentage Rate of #{apr}%")

  # loan duration years input

  loan_duration_years = ""
  loop do
    prompt("Please enter the total loan duration (years):")
    loan_duration_years = gets.chomp
    break if valid_positive_int?(loan_duration_years)
    prompt("Invalid input, value must be a positive integer")
  end
  prompt("You entered a loan duration of #{loan_amount} years")

  # calculate our outputs

  monthly_interest_rate = calc_monthly_interest_rate(apr)
  loan_duration_months = calc_loan_duration_months(loan_duration_years)
  monthly_payment = calc_monthly_payment(loan_amount,
                                         monthly_interest_rate,
                                         loan_duration_months)

  # output our values

  main_output = <<-OUT
  You entered:
  A loan amount of: #{loan_amount} dollars
  An Annual Percentage Rate of: #{apr}%
  A loan duration of: #{loan_duration_years} years

  This gives you:
  A monthly interest rate of: #{monthly_interest_rate.round(3)}%
  A loan duration of: #{loan_duration_months} months
  A monthly payment of: #{monthly_payment.round(2)} dollars
  OUT

  prompt(main_output)

  # Request repeat?

  prompt("Would you like to calculate another mortgage? (y/n):")
  repeat = gets.chomp.downcase
  break unless repeat == 'y'
end
