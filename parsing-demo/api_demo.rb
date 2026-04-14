require "json"
require "open-uri"

# TODO - Let's fetch name and bio from a given GitHub username
url = "https://api.github.com/users/codingskater"

data = URI.parse(url).read

parsed_data = JSON.parse(data)

pp parsed_data['bio']