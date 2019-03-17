require_relative './patient'
require_relative './appointment'
require 'pry'

class Doctor

    attr_accessor :name

    @@all=[]
    def initialize(name)
        @name = name
        @@all<<self
    end
end
