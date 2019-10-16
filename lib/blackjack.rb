def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(11)+1
end

def display_card_total(num)
  puts "Your cards add up to #{num}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets
end

def end_game(num)
  puts "Sorry, you hit #{num}. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card
  display_card_total(sum)
  sum
end

def hit?(current_total)
  prompt_user
  input = get_user_input
  while true do
    if input == 's'
      break
    elsif input == 'h'
      current_total += deal_card
      break
    else
      invalid_command
      prompt_user
      input = get_user_input
    end
  end
  
  current_total
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  tot = initial_round
  until tot > 21
    tot = hit?(tot)
    display_card_total(tot)
  end
  end_game(tot)
end
    
