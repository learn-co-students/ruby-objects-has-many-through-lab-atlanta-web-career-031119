require 'pry'

class Doctor
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    Appointment.new(patient, self, date)
  end

  def appointments
    Appointment.all.select{|appt| appt.doctor == self}
  end

  def patients
    Appointment.all.select{|appt| appt.doctor == self}.map { |a| a.patient  }
  end
end
