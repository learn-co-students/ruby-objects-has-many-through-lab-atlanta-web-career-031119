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
    appointment = Appointment.new(date, patient, self)
  end

  def appointments
    my_appointments = []
    Appointment.all.each do |a|
      if a.doctor == self
        my_appointments << a
      end
    end
    my_appointments
  end

  def patients
    my_patients = []
    Appointment.all.each do |a|
      if a.doctor == self
        my_patients << a.patient
      end
    end
    my_patients
  end

end
