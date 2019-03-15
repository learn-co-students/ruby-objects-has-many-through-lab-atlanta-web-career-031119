class Artist
attr_reader :name, :artist

@@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
    #song should know it belongs to the artist
  end

  def songs
    Song.all.select {|song| song.artist == self }
  end

  def genres
    self.songs.collect {|song| song.genre}
  end

end
