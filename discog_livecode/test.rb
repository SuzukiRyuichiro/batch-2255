require 'open-uri'
require 'nokogiri'

def fetch_album_details(url)
  html = URI.parse(url).read
  doc = Nokogiri::HTML.parse(html)

  # TODO: figure out the CSS selector that gets the String, Array or Integer from the page
  tracks = # Feel free to chain more methods (i.e. text.strip, to_i, map) to format the info into the desired shape
    doc.search('.trackTitleNoArtist_VUgUr').map do |element|
      element.text.strip
    end
  genres = doc.search('table.table_c5ftk tr:first-child td a.link_wXY7O').map { |element| element.text.strip }

  title = doc.search('.title_Brnd1').text.strip.gsub(/.*\s–\s/, '')
  year = doc.search('td time').text.strip.to_i
  artist = doc.search('.title_Brnd1 a').text.strip

  {
    tracks: tracks,
    genres: genres,
    title: title,
    year: year,
    artist: artist
  }
end

pp fetch_album_details('https://www.discogs.com/master/24047-The-Beatles-Abbey-Road')
