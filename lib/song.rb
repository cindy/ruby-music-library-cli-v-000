class Song
  extend Concerns::Findable
  attr_accessor :name, :artist
  @@all = []

  def initialize(name, artist:, genre:)
    @name = name
  end
  def new_from_filename(filename)
    # new song
  end

  def create_from_filename(filename)
    # new from filename but saves to @@all
  end
end
