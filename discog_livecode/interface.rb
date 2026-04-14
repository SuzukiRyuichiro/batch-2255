require_relative 'scraper'
require 'json'
# TODO: scrape the discog page, generate JSON, save them into a file.

# 1. Get top 10 albums' link => #fetch_album_urls
puts 'Getting top 10'
urls = fetch_album_urls

# 2. Get the details of the album * 10 => #fetch_album_details(url)
data = urls.map do |url|
  album = fetch_album_details(url)
  puts "Scraped #{album[:title]} by #{album[:artist]}"
  album
end

File.open('data/top_ten_albums.json', 'wb') do |file|
  file.write(JSON.pretty_generate(data))
end

puts 'Done!'
