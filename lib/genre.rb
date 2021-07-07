require_relative './artist'
require_relative './song'
require 'pry'

class Genre
    @@all = []
    def initialize(name)
        @name = name
        @@all<<self
    end

    def name
        @name
    end

    def songs
        Song.all.select {|song| song.genre == self}
    end

    def self.all
        @@all
    end

    def artists
        songs.map {|song| song.artist}
    end
end