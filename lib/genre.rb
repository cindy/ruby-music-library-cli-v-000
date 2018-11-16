class Genre
  extend Concerns::Findable

  attr_accessor :artists, :songs
  @@all = []
  def initialize(songs)
    @name = name
  end

  def add_song(song)
  end

end
