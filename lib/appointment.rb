class Appointment
  #attr_accessor :patient, :date, :doctor
  attr_reader :patient, :date, :doctor

  @@all = []

  def self.all
    @@all
  end

  def initialize(date, patient, doctor)
    @date = date
    @patient = patient
    @doctor = doctor
    @@all << self
  end

end
