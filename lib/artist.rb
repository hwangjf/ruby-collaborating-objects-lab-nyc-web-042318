require 'pry'

class Artist

  attr_accessor :name, :songs, :save
  @@all = []

  def initialize(name)
    @name = name
    @songs = []

    # find_or_create_by_name(name)
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(artists_name)
    @@all.find do |i|
      if i.name == artists_name
      return i
      end
      z = Artist.new(artists_name)
      z.save
      z
    end

  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end
end

# Pry.start
