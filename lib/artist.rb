class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    save
  end
  
  def add_song(song)
    song.artist = self
  end
  
  def song
    Song.all.select {|song| song.artist == self}
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.find_or_create_by_name(name)
 self.find(name) ?  || self.find(name) : self.create(name)
 #find = self.all.find {|artist| name == artist.name}
 #if find
 #find
 #else
 # new_artist = self.new (name)
end

  def self.find(name)
    self.all.find {|artist| name == artist.name}
  end
  
  def self.create(name)
    new_artist = self.new (name)
    new_artist.save
    new_artist
   end

  def print_songs
    songs.each {|song| puts song.name }
  end
end



#   end
# end 