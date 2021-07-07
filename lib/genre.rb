require 'pry'

class Genre
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select{|s| s.genre == self}
  end

  def artists
    Song.all.select{|song| song.genre == self}.map{|s| s.artist}
  end


end
