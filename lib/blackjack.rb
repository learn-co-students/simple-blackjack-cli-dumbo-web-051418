def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  num = rand(1..11)
  return num
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
  return card_total
  
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  value = gets.chomp
  return value
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  twocards = deal_card + deal_card
  display_card_total(twocards)
end

def hit?(total)
  prompt_user
  if get_user_input == "h"
    total += deal_card
  end
  return total
end

def invalid_command
  puts "Please enter a valid command."
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
  while total < 21 do
    total = hit?(total)
    total = display_card_total(total)
  end
  end_game(total)
end   

