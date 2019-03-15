class Doctor
  attr_reader :name, :date


  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(patient, date)
    Appointment.new(date, patient, self)
  end

  def appointments
    Appointment.all.select {|x| x.doctor == self}
  end

  def patients
    self.appointments.map {|x| x.patient}
  end



end
