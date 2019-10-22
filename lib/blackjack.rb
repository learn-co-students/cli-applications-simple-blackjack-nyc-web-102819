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
  card_1 = deal_card
  card_2 = deal_card 
  display_card_total(card_1 + card_2)
  card_1 + card_2
end

def hit?(current_card_total)
  prompt_user
  user_input = get_user_input 
  user_input 
 
  if user_input == "s"
    return current_card_total
   
  elsif user_input == "h"
    new_card_total = current_card_total += deal_card
    return new_card_total 
    
  else 
    invalid_command
    prompt_user
    user_input = get_user_input 

 end 
end 

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

#def runner
 # welcome 
  #initial_round 
  #until hit?(initial_round) > 21 do 
  #display_card_total(initial_round)
  #end_game
#end 
#end

def runner 
  welcome
  total = initial_round 
  until total > 21 do 
    total = hit?(total)
    display_card_total(total)
  end 
  end_game(total)
end 