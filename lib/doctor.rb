class Doctor

attr_accessor :all, :name
@@all = []
@name
 def initialize(name)
  @name = name
  @@all << self 

 end


 def self.all

 @@all

 end

def new_appointment(date,patient)

Appointment.new(date,patient,self)


end

def appointments

Appointment.all.each do |k,v|

k.doctor == self  

end 
end

def patients
  array = []
  Appointment.all.select do |k|

   if k.doctor == self 
    array << k.patient
    array <<  k.patient.name

    end 
   end 
     array
end
end 
