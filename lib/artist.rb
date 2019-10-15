require 'pry'
class Artist 
  
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name
    save
    #@songs = []
  end
  
  def self.all
    @@all
  end
  
  def songs
    Song.all.select{|song| song.artist == self}
  end
  
  def save
    @@all << self
  end
  
  def add_song(song)
    song.artist = self
    #@songs << song 
  end
  
   def self.find_or_create_by_name(name)
     self.find(name) ? self.find(name) : self.create(name)
   end
   
   def self.find(name)
      self.all.find {|artist| name == artist.name }
   end
   
   def self.create(name)
     #self.new(name).tap{|artist| artist.save }
     new_artist = self.new(name)
     #new_artist.save
     new_artist
   end
   
   def print_songs
     songs.each {|song| puts song.name}
   end
  
end

 

 
 