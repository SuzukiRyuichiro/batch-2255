require_relative '../scraper'

describe '#fetch_master_urls' do
  let(:urls) { fetch_master_urls }

  it 'returns 10 urls' do
    expect(urls.length).to eq(10)
  end

  it 'returns the top 10 masters on discog' do
    expected = ['https://www.discogs.com/master/10362-Pink-Floyd-The-Dark-Side-Of-The-Moon',
                'https://www.discogs.com/master/38722-Fleetwood-Mac-Rumours',
                'https://www.discogs.com/master/24047-The-Beatles-Abbey-Road',
                'https://www.discogs.com/master/8883-Michael-Jackson-Thriller',
                'https://www.discogs.com/master/11703-Pink-Floyd-Wish-You-Were-Here',
                'https://www.discogs.com/master/23934-The-Beatles-Sgt-Peppers-Lonely-Hearts-Club-Band',
                'https://www.discogs.com/master/11329-Pink-Floyd-The-Wall',
                'https://www.discogs.com/master/4300-Led-Zeppelin-Untitled-',
                'https://www.discogs.com/master/13814-Nirvana-Nevermind',
                'https://www.discogs.com/master/46402-The-Beatles-The-Beatles']

    expect(urls).to eq(expected)
  end
end

describe '#scrape_album' do
  it 'returns the detailed info about the album' do
    expected = {
      tracks: [
        'Come Together',
        'Something',
        "Maxwell's Silver Hammer",
        'Oh! Darling',
        "Octopus's Garden",
        "I Want You (She's So Heavy)",
        'Here Comes The Sun',
        'Because',
        'You Never Give Me Your Money',
        'Sun King',
        'Mean Mr. Mustard',
        'Polythene Pam',
        'She Came In Through The Bathroom Window',
        'Golden Slumbers',
        'Carry That Weight',
        'The End',
        'Her Majesty'
      ],
      genres: ['Rock'],
      title: 'Abbey Road',
      artist: 'The Beatles',
      year: 1969
    }
    actual = scrape_album('https://www.discogs.com/master/24047-The-Beatles-Abbey-Road')

    expect(actual).to eq(expected)
  end
end
