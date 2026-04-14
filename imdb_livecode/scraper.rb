require 'open-uri'
require 'nokogiri'
require 'pry-byebug'

def fetch_master_urls
  url = 'https://www.discogs.com/search?sort=have%2Cdesc&type=master'

  html = URI.parse(url).read

  doc = Nokogiri::HTML.parse(html)

  urls = doc.search('div[role=listitem] a.line-clamp-1').map do |element|
    "https://www.discogs.com#{element.attribute('href').value}"
  end

  urls.take(10)
end

def scrape_album(url)
  html = URI.parse(url).read

  doc = Nokogiri::HTML.parse(html)

  tracks = doc.search('.trackTitleNoArtist_VUgUr').map { |element| element.text.strip }
  genres = doc.search('.table_c5ftk tr:first-child td a').map { |element| element.text.strip }
  title = doc.search('h1.title_Brnd1').text.strip.gsub(/.*\s–\s/, '')
  artist = doc.search('h1.title_Brnd1 a').text.strip
  year = doc.search('.table_c5ftk tr:last-child td').text.strip.to_i

  {
    tracks: tracks,
    genres: genres,
    title: title,
    artist: artist,
    year: year
  }
end
