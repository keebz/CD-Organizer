class Artist
  attr_reader :albums, :name

  def initialize(name)
    @name = name
    @albums = []
  end

  def add_album(album)
    @albums << album
  end
end
