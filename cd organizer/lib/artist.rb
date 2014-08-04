class Artist

  @@organizer = []
  attr_reader :albums, :name

  def initialize(name)
    @name = name
    @albums = []
    @@organizer << self
  end

  def add_album(album)
    @albums << album
  end

  def Artist.list_organizer
    @@organizer
  end
end
