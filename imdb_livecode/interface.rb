require_relative 'scraper'
require 'json'

print 'Getting the most collected vinyls'

urls = fetch_master_urls

data = []

puts 'Getting more detailed info'

urls.each do |url|
  puts "fetching #{url}"
  data << scrape_album(url)
end

File.open('data/best_records.json', 'wb') do |file|
  file.write(JSON.pretty_generate(data))
end

puts 'Done!'
