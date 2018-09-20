class Doctor

  attr_accessor :name, :appointment, :doctor

  @@all=[]

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient,date)
    #DO NOT TOUCH
    # Appointment tests failed as this was not passing
    Appointment.new(patient,date,self)
  end

  def appointments
    #DO NOT TOUCH - first try
    Appointment.all.select {|app| app.doctor == self}
  end

  def patients
    #passes with Patient.all   . literally
    Patient.all.collect {|doc| doc.patient}
  end
end
