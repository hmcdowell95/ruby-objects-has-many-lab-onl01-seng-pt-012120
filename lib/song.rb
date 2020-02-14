class Song 
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name
    save
  end
  
  @@all = []
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def artist_name 
    if self.artist == nil
      return nil
    else 
      self.artist.name
    end
  end
  
  def self.songs_with_artists
    z = []
    @@all.each do |x|
      if x.artist == nil 
      else
        z << x
      end
    end
    z.length
  end
      
end