require_relative 'game'

# welcome the user to the rock paper scissors game
puts '=' * 10 + ' WELCOME TO 🪨 📄✂️ ' + '=' * 10
# randomly choose the hand of the bot
possible_hands = %w[rock paper scissors]
bot_hand = possible_hands.sample
# ask the hand for the user
puts 'What is your hand??'
player_hand = gets.chomp.downcase

# if player chose a valid hand, play the game
if possible_hands.include?(player_hand)
  # play the game
  # print out the result
  puts "You chose #{player_hand}, bot chose #{bot_hand}"
  puts game_result(player_hand, bot_hand)
else
  puts 'Wrong hand, you dumb?'
end
# else, print you dumb?
