# Write a if else if operation whether the shop is open at a given hour

# Murasaki sports
# opening hours: 11 ~ 16 break 18 ~ 22

hour = gets.chomp.to_i

if (hour >= 11 && hour < 16) || (hour >= 18 && hour < 22)
  # if the hour falls under their opening time, we wanna print 'we are open'
  puts 'we are open'
elsif hour >= 16 && hour < 18
  puts 'we are on a break'
else
  # if they are closed, we wanna say we're closed
  puts 'we are closed'
end

# maybe, we can add a condition to print `we are in a break`
