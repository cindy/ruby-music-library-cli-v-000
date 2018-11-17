require_relative './music_importer'

class Song
  extend Concerns::Findable
  extend Concerns::Memorable::ClassMethods
  include Concerns::Memorable::InstanceMethods

  attr_accessor :name, :artist, :genre
  @@all = []

  def initialize(name, artist=nil, genre=nil)
    @name = name
    self.artist = artist unless artist.nil?
    self.genre = genre unless genre.nil?
    super()
  end

  def self.all
    @@all
  end

  def artist=(artist)
    @artist = artist
    unless artist.class != Artist || artist.songs.include?(self)
      artist.add_song(self)
    end
  end

  def genre=(genre)
    @genre = genre
    unless genre.class == Genre || genre.songs.include?(self)
      genre.songs << self
    end
  end

  def self.new_from_filename(filename)
    s = filename.split(' - ')
    self.new(s[1], s[0], s[2].gsub(".mp3", ""))
  end

  def create_from_filename(filename)
    # new from filename but saves to @@all
  end
end
