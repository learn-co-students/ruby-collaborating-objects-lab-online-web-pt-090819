class Song 
  
  attr_accessor :name, :artist
  
  @@all = []
  
  def initialize(name)
    @name = name
    save
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
   def self.new_by_filename(file_name)
        rows = file_name.split(/ - /)
        genre_name = rows[2].gsub(".mp3", "")
        artist_name1 = rows[0]
        song_name = rows[1]
        song = self.new(song_name)
        song.artist_name=(artist_name1)
        song

    end

    def artist_name=(name)
        self.artist = Artist.find_or_create_by_name(name)
    end
end