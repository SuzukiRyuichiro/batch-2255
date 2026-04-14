require "open-uri"
require "nokogiri"

# Let's scrape recipes from https://www.bbcgoodfood.com
puts 'Give me a search keyword!'
ingredient = gets.chomp

url = "https://www.bbcgoodfood.com/search?q=#{ingredient}"
search_result_html = URI.parse(url).read

# Parse the HTML with Nokogiri so it is easier to find the info
parsed_search_result = Nokogiri::HTML.parse(search_result_html)

parsed_search_result.search('a.link.d-block').each do |element| 
  p element.attribute('href').value
end