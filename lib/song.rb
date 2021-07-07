class Song
  attr_accessor :name, :artist

@@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end
  
  def self.new_by_filename(filename)
    artist_obj, song = file.split(" - ") #two different variables. "split" >splitting into strings
    new_song = self.new(song)
    new_song.artist_name = artist_obj
    new_song
  end

  def artist_name=(name)
    artist = Artist.find_or_create_by_name(name)
    # artist.add_song(self)
  end
end