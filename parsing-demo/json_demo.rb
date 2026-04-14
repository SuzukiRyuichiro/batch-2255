require "json"

# TODO - let's read/write data from beatles.json
filepath = "data/beatles.json"

# String in JSON format
serialized_beatles = File.read(filepath)

# Turn the string into something easier to manipulate with ruby
beatles_hash = JSON.parse(serialized_beatles)

p beatles_hash['beatles'][1]['last_name']


# Storing

beatles = { beatles: [
  {
    first_name: "John",
    last_name: "Lennon",
    instrument: "Guitar"
  },
  {
    first_name: "Paul",
    last_name: "McCartney",
    instrument: "Bass Guitar"
  }
]}

File.open(filepath, 'wb') do |file|
  file.write(JSON.generate(beatles))
end