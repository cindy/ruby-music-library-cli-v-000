class MusicImporter
  attr_accessor :path
  def initialize(path)
    @path = path
  end

  def files
    Dir.entries(path).select{|f| f.ends_with?('mp3')}
  end

  def import
    #imports all the files from the library
  end
end
