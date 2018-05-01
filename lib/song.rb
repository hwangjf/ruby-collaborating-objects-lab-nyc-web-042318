require 'pry'
class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
    @artist = artist
  end

  def artist_name=(artist_name)
    @artist_name = @artist.name
  end

  def self.new_by_filename(file_name)
    x = file_name.split(" - ")

    song = Song.new(x[1])
    artist = Artist.new(x[0])

    # Artist.all << artist
    song.name = x[1]
    song.artist = artist

    song
    # binding.pry
  end

end
