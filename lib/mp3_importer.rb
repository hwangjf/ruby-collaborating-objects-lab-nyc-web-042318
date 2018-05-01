require 'pry'

class MP3Importer

  attr_accessor :path, :file_path
  # @@all = []

  def initialize(path)
    @path = path
    @files = []
    # @@all << self
  end

  def files
    Dir.foreach(@path) do |file_name|
      if file_name.end_with? "mp3"
        @files << file_name
      end
    end
    @files
  end

  def import
    # binding.pry
    files.each do |mp3|
      Song.new_by_filename(mp3)
    # binding.pry
    end
  end

end
