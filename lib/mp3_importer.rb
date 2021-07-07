class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.entries(path).select{|entries| entrie.include?(".mp3") }
  #file || = Dir.glob("#{path}/*map{|f|f.gsub("#{path}/"," ")
  end
  
  def import
    files.each { |file| Song.new_by_filename(file)}
  end
end 