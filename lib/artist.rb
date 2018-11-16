class Song
  extend Concerns::Findable
  
  attr_accessor :name, :genres
  @@all = []
  def initialize(name)
    @name = name
  end

  def add_song(song)
  end

end
