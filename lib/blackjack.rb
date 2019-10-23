def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  return gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  first_card = deal_card
  second_card = deal_card
  total = first_card + second_card
  display_card_total(total)
  total
end

def hit?(current_card_total)
  prompt_user
  user_input = get_user_input
  
  if user_input == 'h'
    hit = deal_card
    current_card_total += hit
  
  elsif user_input == 's'
  
  else
    invalid_command
    prompt_user
    get_user_input
  end
  
  current_card_total
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_sum = initial_round
  
  until card_sum > 21 do
    card_sum = hit?(card_sum)
    display_card_total(card_sum)
  end
  
  end_game(card_sum)
end

# 1. Welcome the user
# 2. Deal them their first two cards, i.e. their initial_round
# 3. Ask them if they want to hit or stay
# 4. If they want to stay, ask them again!
# 5. If they want to hit, deal another card and display the new total
# 6. If their card total exceeds 21, the game ends.
