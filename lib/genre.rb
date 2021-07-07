class Genre

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    song_list = []
    Song.all.select do |s|
      if s.genre == self
        song_list << s
      end
    end
    song_list
  end

  def artists
    artist_list = []
    Song.all.select do |a|
      if a.genre == self
      artist_list << a.artist
      end
    end
    artist_list
  end

end
