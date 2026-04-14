require 'csv'

# TODO: - let's read/write data from beatles.csv
filepath = 'data/beatles.csv'

# CSV.foreach(filepath, headers: true) do |row|
#   # Without giving headers first_row
#   # puts "#{row[0]} #{row[1]} is a Beatle and plays the #{row[2]}"

#   # With giving the headers: true
#   puts "#{row['First Name']} #{row['Last Name']} is a Beatle and plays the #{row['Instrument']}"
# end

# Write operation
CSV.open(filepath, 'wb') do |csv|
  # Write every row that should be written into the csv
  # Beware that 'wb' mode erase all that was in the preexisting file.
  csv << ['First Name', 'Last Name', 'Instrument']
  csv << ['Ryuichiro', 'Suzuki', 'Piano']
end
