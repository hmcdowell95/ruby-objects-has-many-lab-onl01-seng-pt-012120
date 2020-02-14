class Artist 
  attr_accessor :name 
  
  def initialize(name)
    @name = name
  end
  
  @@count = []
  
  def add_song(song)
    song.artist = self
    @@count << song
  end
  
  def songs
    Song.all.select {|song| song.artist == self}
  end

  def add_song_by_name(song)
    g = Song.new(song)
    g.artist = self
    @@count << g
  end
  
  def self.song_count
    Song.songs_with_artists
  end
    
end