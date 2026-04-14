require 'open-uri'
require 'nokogiri'

def scrape_album(url)
  html = URI.parse(url).read

  doc = Nokogiri::HTML.parse(html)

  # TODO: figure out the CSS selector that gets the String, Array or Integer from the page
  tracks = doc.search('.remove_this_example') # Feel free to chain more methods (i.e. text.strip, to_i, map) to format the info into the desired shape
  genres = doc.search('.remove_this_example')
  title = doc.search('.remove_this_example')
  year = doc.search('.remove_this_example')
  artist = doc.search('.remove_this_example')

  {
    tracks: tracks,
    genres: genres,
    title: title,
    year: year,
    artist: artist
  }
end

pp scrape_album('https://www.discogs.com/master/24047-The-Beatles-Abbey-Road')
