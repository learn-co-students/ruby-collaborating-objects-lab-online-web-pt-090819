require 'pry'

class Artist 
  
  attr_accessor :name, :songs  
  
  @@all = []
  
  def initialize(name)
    @name = name # initialize w artist name 
    save
    #@@all << self
  end 
  
  def add_song(song)
    song.artist = self 
  end 
  
  def songs
    # self is an Artist instance 
    # select returns an array  
    # looking in Song.all and selecting any where song.artist = this specific Artist instance 
    Song.all.select { |song| song.artist == self }  
  end 
  
  def save 
   @@all << self 
  end 
  
  def self.all 
    @@all
  end
  
  def self.find_or_create_by_name(name)
    self.find(name) ? self.find(name) : self.create(name) # if you find a name match, return it. otherwise create a new instance with the name 
  end
  
  def self.find(name)
    self.all.find { |artist| name == artist.name } # look in the @@all array. find any names that are the same as the name parameter passed into the method
  end
  
  def self.create(name)
    new_artist = self.new(name) # 
    new_artist 
  end
   
  def print_songs 
    songs.each { |song| puts song.name } # take the array returned from the "songs" method & just output the names
  end 
  
end 