require_relative './doctor'
require_relative './patient'
require 'pry'

class Appointment

    attr_accessor :patient, :doctor, :date

    @@all = []
    def initialize(patient, doctor, date)
        @date = date
        @doctor = doctor
        @patient = patient        
        @@all<<self
    end

    def self.all
        @@all
    end
end
