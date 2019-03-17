require_relative './doctor'
require_relative './appointment'
require 'pry'

class Patient

    attr_accessor :name

    @@all=[]
    def initialize(name)
        @name = name
        @@all<<self
    end

    def new_appointment(doctor, date)
        Appointment.new(self, doctor, date)
    end

    def appointments
        Appointment.all.select{|appointment| appointment.doctor}
    end

    def self.all
        @@all
    end

    def doctors
        Appointment.all.map{|appointment| appointment.doctor}
    end
end