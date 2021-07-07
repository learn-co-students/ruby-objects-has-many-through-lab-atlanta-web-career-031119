require 'pry'

class Artist

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    song = Song.new(name, self, genre)
  end

  def songs
    song_list = []
    Song.all.select do |s|
      if s.artist == self
        song_list << s
      end
    end
    song_list
  end

  def genres
    genre_list = []
    Song.all.select do |g|
      if g.artist == self
        genre_list << g.genre
      end
    end
    genre_list
  end


end
