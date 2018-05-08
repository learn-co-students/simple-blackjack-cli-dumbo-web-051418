def welcome
  # code #welcome here
  puts 'Welcome to the Blackjack Table'
end

def deal_card
  # code #deal_card here
  1 + rand(11)
end

def display_card_total(card_total)
  # code #display_card_total here
 puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  input = gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  first_card = deal_card
  sum = first_card + deal_card
  display_card_total(sum)
  sum
end

def hit?(current_cards)
  # code hit? here
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
  # code invalid_command here
  puts "Please enter a valid command"
  prompt_user
end
# def welcome
#     puts "HI!"
# end
 
def ask_name
    puts "What is your name?"
end
 
def store_name
    gets.chomp
end
 
def personalized_welcome(name)
    puts "HI, #{name}"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def run_program
    welcome
    ask_name
    name = store_name
    personalized_welcome(name)
end

def runner
  # run_program
  # code runner here
  welcome 
  cards = initial_round
  until cards > 21
   cards = hit?(cards)
   display_card_total(cards)
  end
  end_game(cards)
end
    
