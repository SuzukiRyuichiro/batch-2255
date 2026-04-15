require_relative 'car'

ferrari = Car.new('red', 1000, 'Ferrari')
# golf = Car.new('blue', 200, 'VW')

# p ferrari

# puts 'Im painting my ferarri to yellow'
# ferrari.paint('yellow')

# p ferrari

puts "i have a #{ferrari.brand} and it is #{ferrari.color}"

# Thanks to attr writer
ferrari.color = 'black'

ferrari.start_engine

# This would be an error because you are calling private method from outside.
# ferrari.start_fuel_pumo
