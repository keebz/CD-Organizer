require 'rspec'
require 'album'
require 'artist'

describe Artist do
  it 'initalizes with a name for the artist' do
  test_artist = Artist.new('prince')
  test_artist.should be_an_instance_of Artist
  end
  it 'initalizes with an empty array of albums' do
    test_artist = Artist.new('prince')
    test_artist.albums.should eq []
  end
  it 'adds an ablum to the artists albums array' do
    test_artist = Artist.new('prince')
    test_album = Album.new ('Purple Rain')
    test_artist.add_album(test_album)
    test_artist.albums.should eq [test_album]
  end

end

describe Album do
  it 'initalizes with a title for the album' do
    test_album = Album.new('Purple Rain')
    test_album.should be_an_instance_of Album
  end
end
