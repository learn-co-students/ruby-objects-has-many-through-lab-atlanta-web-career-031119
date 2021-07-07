class Patient

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    appointment = Appointment.new(date, self, doctor)
  end

  def appointments
    my_appointments = []
    Appointment.all.each do |a|
      if a.patient == self
        my_appointments << a
      end
    end
    my_appointments
  end

  def doctors
    my_doctors = []
    Appointment.all.each do |a|
      if a.patient = self
        my_doctors << a.doctor
      end
    end
    my_doctors
  end

end
