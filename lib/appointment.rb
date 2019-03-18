require 'pry'

class Appointment
  attr_accessor :date
  attr_reader :doctor, :patient

  @@all = []

  def initialize(patient, doctor, date="Monday, August 1st")
    @patient = patient
    @doctor = doctor
    @date = date
    @@all << self
  end

  def self.all
    @@all
  end 
end
