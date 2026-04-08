# ask user for input of their age
# turn it into an int
puts "What's your age?"
age = gets.chomp.to_i
# check if their age is over 20
# if age > 18
#   # if so print you can drink
#   puts 'You can drink!!'
# elsif age < 18
#   # here, we can guarantee that the person is under 20
#   puts 'You are too young to drink!!'
# else
#   # this runs when the user is under 20
#   puts 'You are too young to drink, but you can vote!'
# end

# ternary operator

# age >= 20 ? 'You can drink' : 'You cannot drink'

puts 'you can drink' if age >= 20
