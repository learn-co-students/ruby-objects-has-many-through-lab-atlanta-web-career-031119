require_relative './artist'
require_relative './genre'
require 'pry'

class Song

    attr_accessor :name, :artist, :genre, :song_list
    @@all=[]
    def initialize(artist, name, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@all<<self
    end

    def self.all
        @@all
    end
    
end