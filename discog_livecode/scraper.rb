require 'open-uri'
require 'nokogiri'

def fetch_album_urls
  # Open the top 30 album list page -> HTML
  # Parse the HTML
  url = 'https://www.discogs.com/search?sort=have%2Cdesc&type=master'
  domain = 'https://www.discogs.com'
  pure_html = URI.parse(url).read
  doc = Nokogiri::HTML.parse(pure_html)

  # search for the elements that have the link to individual albums
  doc.search('a.line-clamp-1.w-fit').first(10).map do |album|
    domain + album.attribute('href').value
  end
  # get the first 10 of them
  # get the value of the href
  # return the collected URLs
end

def fetch_album_details(url)
  html = URI.parse(url).read
  doc = Nokogiri::HTML.parse(html)

  # TODO: figure out the CSS selector that gets the String, Array or Integer from the page
  tracks =
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
