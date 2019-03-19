class Patient
attr_accessor  :all, :name

  @@all = []
  @name
  def initialize(name)
  @name = name
  @@all << self

  end

  def new_appointment(date,doctor)

   Appointment.new(date,self,doctor)
   

  end

  def self.all

  @@all
  end

  def appointments 
     Appointment.all.select  do |k| 
       
       k.patient == self   
      end    
       
  end
  
  def doctors 
    array = []
     Appointment.all.select  do |k| 
       
       if k.patient == self   
      
        array << k.doctor
        array << k.doctor.name 
      end    
   end 
           array 
 end 
  
end
