require "pry"


def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  round_total = 0
  2.times do
    round_total += deal_card
  end
  display_card_total(round_total)
  round_total
end

def hit?(card_total)
  
  valid_command = false
  new_total = 0
  prompt_user
  
  until valid_command == true
    user_response = get_user_input
    
    case user_response
      when 'h'
        new_total = card_total + deal_card
        valid_command = true

      when 's'
        new_total = card_total
        valid_command = true

      else
        invalid_command
        prompt_user
        
    end
    
#    binding.pry
  end
  
  new_total
  
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  running_total = initial_round
  until running_total > 21
#    binding.pry
    running_total = hit?(running_total)
    display_card_total(running_total)
  end
end_game(running_total)
end
    
