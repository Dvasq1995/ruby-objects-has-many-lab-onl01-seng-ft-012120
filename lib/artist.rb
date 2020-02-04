class Artist
  attr_accessor :name
  
  def initialize(name)
    @name = name
  end
  
  def songs
    Songs.all.select {|song| song.artist = self}
  end
  
  def add_song(song)
    song.artist = self
  end
  
  def add_song_by_name(song_name)
    song = Song.new(song_name)
    add_song(song)
  end
  
  def self.song_count
    Songs.all.count {|song| song}
  end
  
end