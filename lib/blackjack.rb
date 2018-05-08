def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  1 + rand(11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input = gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  first_card = deal_card
  sum = first_card + deal_card
  display_card_total(sum)
  sum
end

def hit?(current_cards)
  prompt_user
  value = get_user_input
  if value == 's'
    current_cards
  elsif value == 'h'
    total = current_cards + deal_card
  else
    invalid_command
  end
end

def invalid_command
  puts "Please enter a valid command. 'S' or 'H'"
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome 
  cards = initial_round
  until cards > 21
   cards = hit?(cards)
   display_card_total(cards)
  end
  end_game(cards)
end
    
