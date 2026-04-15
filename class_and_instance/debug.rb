require 'pry-byebug'

puts "Hello what's your age"

age = gets.chomp.to_i

binding.pry

if age >= 18
  puts "You can vote!!"
end
