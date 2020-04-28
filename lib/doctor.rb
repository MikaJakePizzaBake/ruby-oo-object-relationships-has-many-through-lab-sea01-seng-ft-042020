class Doctor
  @@all = []
  attr_reader :name
  def initialize (name)
    @name = name
    @@all << self
  end
  def self.all
    @@all
  end
  def new_appointment(date, patient)
    Appointment.new(date, self, patient)
  end
  def appointments
    Appointment.all.select {|app| app.doctor == self}
  end
  def patients
    appointments.map {|app| app.patient }
  end
end
