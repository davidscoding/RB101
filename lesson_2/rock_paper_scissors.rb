VALID_CHOICES = ['rock', 'paper', 'scissors', 'spock', 'lizard']
TRUNCATED_CHOICES = ['r', 'p', 'sc', 'sp', 'l']
CHOICE_HIERARCHY_KEY_BEATS_VALUE = { rock: ['scissors', 'lizard'],
                                     lizard: ['spock', 'paper'],
                                     spock: ['rock', 'scissors'],
                                     scissors: ['lizard', 'paper'],
                                     paper: ['spock', 'rock'] }

# def test_method
#   prompt('test')
# end

def prompt(message)
  puts("=> #{message}")
end

def w?(player1, player2)
  CHOICE_HIERARCHY_KEY_BEATS_VALUE[player1.to_sym].include?(player2)
end

def display_round_results(player, computer)
  if w?(player, computer)
    prompt("You won the round!")
  elsif w?(computer, player)
    prompt("Computer won the round!")
  else
    prompt("It's a tie!")
  end
end

def convert_input(user_input)
  if TRUNCATED_CHOICES.include?(user_input)
    VALID_CHOICES[TRUNCATED_CHOICES.index(user_input)]
  else
    user_input
  end
end

def win_counter(player, computer, win_count)
  if w?(player, computer)
    win_count[:player] += 1
  elsif w?(computer, player)
    win_count[:computer] += 1
  end
end

def find_winner(win_count)
  return "Player is the winner" if win_count[:player] >= 3
  return "Computer is the winner!" if win_count[:computer] >= 3
  false
end

user_input = ""
choice = ""
win_count = { player: 0, computer: 0 }

loop do
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    user_input = gets.chomp

    if VALID_CHOICES.include?(user_input) ||
       TRUNCATED_CHOICES.include?(user_input)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  choice = convert_input(user_input)
  computer_choice = VALID_CHOICES.sample

  prompt("You chose #{choice}, computer chose #{computer_choice}")

  win_counter(choice, computer_choice, win_count)

  display_round_results(choice, computer_choice)
  prompt("Score is
          player: #{win_count[:player]}
          computer: #{win_count[:computer]}")
  if find_winner(win_count)
    prompt(find_winner(win_count))
    win_count = { player: 0, computer: 0 }
    prompt("Repeat? (y/n)")
    answer = gets.chomp
    break unless answer.downcase.start_with?('y')
  end
end

prompt("Thank you for playing. Goodbye!")
