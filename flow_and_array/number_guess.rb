# randomly choose a number

number = rand(1..5)

guessed_number = nil
# ask the user to guess the number
until number == guessed_number
  puts 'Guess the number!'
  guessed_number = gets.chomp.to_i
  # if the user guessed it correct, we say "correct!"
  if number == guessed_number
    puts 'Correct!'
  else
    # if not, say "wrong!" and let the user guess again until they get it right
    puts 'Wrong! guess again!'
  end
end
