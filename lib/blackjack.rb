def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card_range = (1..11).to_a
  array_index = (rand()*11).ceil
  card = card_range[array_index]
  if card == nil || card == 0
    return 1
  else 
    return card
  end
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
  if card_total==21
    puts "Congrats, you hit #{card_total}! Thanks for playing!"
  elsif card_total > 21
    puts "Sorry, you hit #{card_total}. Thanks for playing!"
  end 
end

def initial_round
  sum = 0
  sum+=deal_card
  sum+=deal_card
  display_card_total(sum)
  return sum
end

def hit?(card_total)
  prompt_user
  hit_or_stay = get_user_input
  if hit_or_stay == "h"
    card_total+=deal_card
    display_card_total(card_total)
  elsif hit_or_stay == "s"
    card_total+=0
  else 
    invalid_command
    prompt_user
  end
  return card_total
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = hit?(initial_round)
  until card_total >= 21
    hit?(card_total)
  end
  end_game(card_total)
end