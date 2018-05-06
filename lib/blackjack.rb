def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(total_cards)
  puts "Your cards add up to #{total_cards}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input = gets.chomp
  return input
end

def end_game(total_cards)
  puts "Sorry, you hit #{total_cards}. Thanks for playing!"
end

def initial_round
  two_cards = deal_card + deal_card
  display_card_total(two_cards)
  return two_cards
end

def hit?(total_cards)
  prompt_user
  hit_answer = get_user_input

  if hit_answer == "h"
    total_cards += deal_card
  elsif hit_answer == "s"
    total_cards
  else
    invalid_command
  end

end

def invalid_command
  puts "Please enter a valid command"
  hit?
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total_cards = initial_round
  until total_cards > 21
    total_cards = hit?(total_cards)
    display_card_total(total_cards)
  end
end_game(total_cards)
end
