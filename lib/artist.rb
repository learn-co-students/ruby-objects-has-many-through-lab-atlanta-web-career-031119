require 'pry'

class Artist
  attr_reader :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  def songs
    Song.all.select{|s| s.artist == self}
  end

  def genres
    Song.all.select { |s| s.artist == self  }.map { |s| s.genre  }
  end






end
