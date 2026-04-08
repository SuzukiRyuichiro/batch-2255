# define a method that determines the result of the game
# given the hand of the user and hand of the bot

# we expect to receive strings like 'rock', 'paper'
def game_result(player_hand, bot_hand)
  if player_hand == bot_hand
    # if both hands are the same, return Draw
    'Draw!'
  elsif (player_hand == 'rock' && bot_hand == 'scissors') || (player_hand == 'paper' && bot_hand == 'rock') || (player_hand == 'scissors' && bot_hand == 'paper')
    # if the player wins (big combination of && ||) return you win
    'You win!'
  else
    # else return "you lost"
    'You lost!'
  end
end

# puts game_result('rock', 'paper') == 'You lost!'
# puts game_result('rock', 'rock') == 'Draw!'
# puts game_result('rock', 'scissors') == 'You win!'
# puts game_result('paper', 'rock') == 'You win!'
# puts game_result('scissors', 'paper') == 'You win!'
