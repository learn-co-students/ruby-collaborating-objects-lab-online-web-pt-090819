class MP3Importer
  attr_accessor :path
  
  def initialize(file)
    @path = file
    
  end
  
  def files
    @files=[]
    file= Dir.entries(@path)
    file.each do |file|
      if file.include?("mp3")
        @files << file
      end
    end
    @files
  end
  
  def import
    filestoimport=self.files
    filestoimport.each do |file|
      Song.new_by_filename(file)
    end
  
  end
  
  
end
