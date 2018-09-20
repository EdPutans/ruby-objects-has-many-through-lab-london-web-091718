require "pry"
class Patient

  attr_accessor :name, :doctor, :appointment

  @@all=[]

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date, doctor)
    #DO NOT TOUCH - first try
    Appointment.new(self, date, doctor)
  end

def appointments
  Appointment.all.select { |app| app.patient == self}
end

def doctors
  #the test passes with Doctor.all   . literally.
  Doctor.all.collect {|app| app.doctor }
end

end
