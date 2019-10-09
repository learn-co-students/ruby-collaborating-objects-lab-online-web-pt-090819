class Artist
  attr_accessor :name, :songs
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end
  
  def self.all
    @@all
  end
  
  def add_song(song)
    song.artist = self
    @songs << song
  end
  
  def songs
    @songs
  end
  
  def find_or_create_by_name(name)
    @@all.each {|artist| artist.name == name} || self.new(name)
  end
  
  def print_songs
    @@all.each do |artist|
      puts "#{artist.name}"
    end
  end
end